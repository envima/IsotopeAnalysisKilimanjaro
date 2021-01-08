# Set environment for environmental information systems analysis

if(Sys.info()[["nodename"]] == "PC19616"){
  root_folder = path.expand("~/plygrnd/IsotopeAnalysisKilimanjaro/")
} else {
  root_folder = path.expand("~/project/IsotopeAnalysisKilimanjaro/")
}

fcts_folder = file.path(root_folder, "src/functions/")

project_folders = c("data/",
                    "data/compiled_data/",
                    "data/lab_records/",
                    "data/field_records/")

libs = c("colorspace", "ggplot2", "mapview", "sf")

envrmt = createEnvi(root_folder = root_folder,
                    fcts_folder = fcts_folder,
                    folders = project_folders, 
                    path_prefix = "path_", libs = libs,
                    alt_env_id = "COMPUTERNAME", alt_env_value = "PCRZP",
                    alt_env_root_folder = "F:\\BEN\\edu")

# More settings
# none
