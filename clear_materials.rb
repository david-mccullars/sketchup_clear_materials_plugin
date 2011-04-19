require 'sketchup'

def clear_materials(selection=nil)
  (selection || Sketchup.active_model.selection || []).each do |e|
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

unless file_loaded? File.basename(__FILE__)
  UI.menu("Plugins").add_item("Clear Materials") { clear_materials }
end
file_loaded File.basename(__FILE__)
