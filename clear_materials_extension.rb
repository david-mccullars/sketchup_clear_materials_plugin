require 'sketchup.rb'
require 'extensions.rb'
require 'LangHandler.rb'

$clearMaterialsStrings = LanguageHandler.new("ClearMaterials")
clear_materials_extension = SketchupExtension.new $clearMaterialsStrings.GetString("ClearMaterials"), "ClearMaterials/clear_materials.rb"
clear_materials_extension.description = $clearMaterialsStrings.GetString("Recursively clears the materials used in the selected object(s).")
Sketchup.register_extension clear_materials_extension, true
