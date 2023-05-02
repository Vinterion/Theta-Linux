#ifndef __RTG_H__
#define __RTG_H__

#include"Chunk.h"
#include<random>

namespace theta {
	
	struct seed {
		int32_t max_height{256};
	};

	//https://github.com/OneLoneCoder/Javidx9/blob/master/ConsoleGameEngine/SmallerProjects/OneLoneCoder_PerlinNoise.cpp
	// std::vector<float> PerlinNoise1D(const std::vector<float>& seed)
	// {
	// 	auto outpout = seed;
	// 	for (size_t x = 0; x < seed.size();++x)
	// 	{
	// 		float fNoise = 0.0f;
	// 		float fScaleAcc = 0.0f;
	// 		float fScale = 1.0f;

	// 		for (int o = 0; o < 8;++o)
	// 		{
	// 			int nPitch = static_cast<int>(seed.size()) >> o;
	// 			int nSample1 = (x / nPitch) * nPitch;
	// 			int nSample2 = (nSample1 + nPitch) % static_cast<int>(seed.size());

	// 			float fBlend = (float)(x - nSample1) / (float)nPitch;

	// 			float fSample = (1.0f - fBlend) * seed[nSample1] + fBlend * seed[nSample2];

	// 			fScaleAcc += fScale;
	// 			fNoise += fSample * fScale;
	// 			fScale = fScale / 2.f;
	// 		}

	// 		outpout[x] = fNoise / fScaleAcc;
	// 	}
	// 	return outpout;
	// }
	struct RTG {
	  
	        enum class biomes{plain,desert,snow};

	        static void Generate_Terrain(Chunk_Menager& Chunk_menager, [[maybe_unused]] seed&& seed, Texture_Menager& Txt_menager) {
			std::random_device r;
			std::default_random_engine rengine(r());


			float min_height = Chunk_menager.get_start_point().y + (Chunk_menager.get_size().second - 1) * 1024.f;
#if 0
			float max_lenght = Chunk_menager.get_start_point().x + (Chunk_menager.get_size().first - 1) * 1024.f;
			int ChunkXMod = static_cast<int>(Chunk_menager.get_size().first / 2);

			//Generating flat terrain
			for (auto i = Chunk_menager.get_start_point().x; i <= max_lenght; i += 32.f) {
				float local_max_height = 640.f;
				for (auto j = min_height; j > local_max_height; j -= 32.f) {
					Chunk_menager.insert(std::make_shared<theta::Block>(sf::Vector2f{ i,j }, Txt_menager, theta::Texture_Id::Dirt));
				}

			}
			//Generating Simple Mountains
			std::uniform_int_distribution<int>int_rand_engine(60, 80);
			auto number_of_mountains = int_rand_engine(rengine);
			for (auto i1 = 0; i1 < number_of_mountains; ++i1) {
				auto place_of_mountain = Chunk_menager.get_start_point().x
				  + 1024.f * (int_rand_engine(rengine) % ChunkXMod + 1)
				  + 256.f * (int_rand_engine(rengine) % 8);
				auto height_of_mountain = 32.f * (int_rand_engine(rengine) % 10 + 4);
				auto size_of_leyer = 3U;
				for (; height_of_mountain > -32.f; height_of_mountain -= 32.f, size_of_leyer += 2) {
					auto offset = 32.f * floorf(size_of_leyer / 2.f);
					for (auto j1 = place_of_mountain - offset; j1 <= place_of_mountain + offset; j1 += 32.f) {
						Chunk_menager.insert(
						std::make_shared<theta::Block>(sf::Vector2f{ j1,640.f - height_of_mountain }, Txt_menager, theta::Texture_Id::Dirt));
					}
				}
			}
#endif			
#if 1
			std::vector<int16_t> height_date(static_cast<size_t>(Chunk_menager.get_size().first*32),0);
		    
			std::vector<biomes> biomes_date(static_cast<size_t>(Chunk_menager.get_size().first*32));

			//Creating biomes
			std::uniform_int_distribution<int> biome_rand(30,120);
			std::uniform_int_distribution<int> biome_type_rand(0,2);
			size_t  j = biome_rand(rengine);
			for(size_t i=0 ;i <= biomes_date.size(); i+=j){
			  biomes tmp = static_cast<biomes>(biome_type_rand(rengine));
			  for(auto z = i;z < j+i && z < biomes_date.size();++z){
			    biomes_date[z] = tmp;
			  }
			  j = biome_rand(rengine);
			}
			//Creating height date
			std::uniform_int_distribution<int> num_rand_engine(40, 50);
			std::uniform_int_distribution<int> height_rand(-20,20);
			std::uniform_int_distribution<int> random_place(0,height_date.size()-1);
			auto number_of_dis = num_rand_engine(rengine);
			for (auto i1 = 0; i1 < number_of_dis; ++i1) {
			  auto place_of_dis = random_place(rengine);
			  auto height_dis = height_rand(rengine);
			  auto offset = abs(height_dis << 2)/2;
			  bool up_or_down = height_dis > 0;
			  for(auto i2 = std::max(0,place_of_dis-offset);
			      i2 <= std::min(static_cast<int>(height_date.size()-1),place_of_dis+offset);++i2){
			    int16_t local_height = height_dis + (abs(i2 - place_of_dis))*(up_or_down ? -1:1);
			    height_date[i2] = up_or_down?
			      std::max(height_date[i2],local_height):
			      std::min(height_date[i2],local_height);
			  }
			}
			//Creating Terrain
			for(size_t i = 0; i < height_date.size();++i){
			  float local_max_height = 640.f - 32.f*height_date[i];
			  for (auto j = min_height; j > local_max_height; j -= 32.f) {
			    int8_t block_id = 2;
			    float dirt_layout_height = 32.f*(3+num_rand_engine(rengine)%4);
			    if(j - local_max_height == 32.f && biomes_date[i] == biomes::plain) block_id = 0;
			    else if(j - local_max_height <= dirt_layout_height){
			      if(biomes_date[i] == biomes::plain) block_id = 1;
			      else if(biomes_date[i] == biomes::desert) block_id = 3;
			      else if(biomes_date[i] == biomes::snow) block_id = 4;
			    }
		       
			    Chunk_menager.insert(std::make_shared<theta::Block>
						 (sf::Vector2f{ Chunk_menager.get_start_point().x + i*32.f,j },
						  Txt_menager,
						  static_cast<theta::Texture_Id>(block_id)));
				
			  }
			  
			}
		
#endif			
		}
	};

}

#endif // !__RTG_H__