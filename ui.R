library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Psudoboat"),
  dashboardSidebar(
    sliderInput("comb", "Combat:",
                min = 0, max = 100, value = 50
    ),
    sliderInput("puzz", "Puzzle:",
                min = 0, max = 100, value = 50
    ),
    sliderInput("soci", "Social:",
                min = 0, max = 100, value = 50
    ),
    sliderInput("stry", "Player Driven Story:",
                min = 0, max = 100, value = 50
    ),
    sliderInput("role", "Roleplay:",
                min = 0, max = 100, value = 50
    ),
    sliderInput("rule", "Rules:",
                min = 0, max = 100, value = 50
    ),
    checkboxGroupInput("dow", "Days Looking for Games", 
                       c("Sunday" = 1,
                         "Monday" = 2,
                         "Tuesday" = 3,
                         "Wednesday" = 4,
                         "Thursday" = 5,
                         "Friday" = 6,
                         "Saturday" = 7), selected = 1),
    numericInput("hod_start", "Desired Game Time Between:", 12, min = 1, max = 24, step = 1),
    numericInput("hod_end", "And:", 17, min = 1, max = 24, step = 1),
    checkboxGroupInput("types", "Game Types",
                       c("Free" = "free",
                         "Paid" = "paid",
                         "One Shot" = "oneshot",
                         "Recurring" = "recurring"),
                       selected = c(1,2,3,4))
  ),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    # fluidRow(
    #   box(
    #     tableOutput("player_scores")
    #   )
    # ),
    # fluidRow(
    #   tableOutput()
    # ),
    fluidRow(
      HTML("<H2>Top Matching Games <H2>"),
      box(
        htmlOutput("game_1_details")
      ),
      box(
        imageOutput("radar_1"),
        height = 350
      )
    ),
    fluidRow(
      box(
        htmlOutput("game_2_details")
      ),
      box(
        imageOutput("radar_2"),
        height = 350
      )
    ),
    fluidRow(
      box(
        htmlOutput("game_3_details")
      ),
      box(
        imageOutput("radar_3"),
        height = 350
      )
    ),
    fluidRow(
      box(
        htmlOutput("game_4_details")
      ),
      box(
        imageOutput("radar_4"),
        height = 350
      )
    ),
    fluidRow(
      box(
        htmlOutput("game_5_details")
      ),
      box(
        imageOutput("radar_5"),
        height = 350
      )
    ),
    fluidRow(
      tableOutput("results_table")
    )
  )
)