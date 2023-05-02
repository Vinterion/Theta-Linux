#include"headers/Texture_Menager.h"
#include<filesystem>

namespace theta {

	const Texture_ptr theta::Texture_Menager::get_Texture(const Texture_Id id) 
	{
		if (__map.find(id) == __map.end()) {
			sf::Texture texture;
			std::string _abs_path = _dir_path.data();
			_abs_path += list_of_Textures[static_cast<size_t>(id)].data();
			if(!texture.loadFromFile(_abs_path))
			  throw std::runtime_error("failed to load the file");
			__map[id] = std::make_shared<sf::Texture>(std::move(texture));
		}
		return __map[id];
	}

}