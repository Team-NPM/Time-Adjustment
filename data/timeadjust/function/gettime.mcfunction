scoreboard players reset @s TimeAdjust
tellraw @s [\
  {\
    "translate": "The day lasts "\
  },\
  {\
    "score": {\
      "name": "TimeAdjust.Display.Hours",\
      "objective": "TimeAdjust"\
    }\
  },\
  {\
    "translate": " hours, "\
  },\
  {\
    "score": {\
      "name": "TimeAdjust.Display.Minutes",\
      "objective": "TimeAdjust"\
    }\
  },\
  {\
    "translate": " minutes"\
  }\
]