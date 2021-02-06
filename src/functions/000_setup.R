# Set environment for environmental information systems analysis

if(Sys.info()[["nodename"]] == "PC19616"){
  root_folder = path.expand("~/plygrnd/IsotopeAnalysisKilimanjaro/")
} else {
  root_folder = path.expand("~/project/IsotopeAnalysisKilimanjaro/")
}

fcts_folder = file.path(root_folder, "src/functions/")

# project_folders = c("data/",
#                     "data/compiled_data/",
#                     "data/lab_records/",
#                     "data/field_records/",
#                     "data/hysplit/out/weekly")

libs = c("colorspace", "ggplot2", "mapview", "opentraj", "sf", "sp")

project_folders <- list.dirs(path = root_folder, full.names = FALSE, recursive = TRUE)
project_folders <- project_folders[!grepl("\\..", project_folders)]
envrmt <- createEnvi(
  root_folder = root_folder, fcts_folder = file.path(root_folder, "src/functions/"),  folders = project_folders,
  libs = libs, create_folders = FALSE)

# More settings
# none
