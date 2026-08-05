# quarto use template wjhopper/lts
# quarto render

library(moodleR)

tab <- open_moodle(
  site_url = "https://moodle.smith.edu",
  graphical = TRUE
)

tab$course <- 57135
section_info <- create_section(tab, section_name = "Lab 1")

moodleR::upload_file(tab, section = "Lab 1", title = "Lab 1: Welcome to R", path = "demo/demo.html")
moodleR::upload_file(tab, section = "Lab 1", title = "Lab 1 Template", path = "demo/demo_template.qmd")
moodleR::upload_file(tab, section = "Lab 1", title = "Lab 1 Answer Key", path = "demo/demo_solutions.html",
                     visible = FALSE # Keep solutions hidden until after class
                     )
