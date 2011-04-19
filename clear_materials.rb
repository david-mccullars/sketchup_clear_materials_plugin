UI::menu("Plugins").add_item($clearMaterialsStrings.GetString("Clear Materials")) do
  clear_materials
end

def clear_materials(selection=nil)
  (selection || Sketchup.active_model.selection).each do |e|
    case e.typename
    when 'Group'
      clear_materials e.entities
      e.material = nil
    when 'Face'
      e.material = nil
      e.back_material = nil
    end
  end
end
