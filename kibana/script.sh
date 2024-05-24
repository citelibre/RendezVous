#!/bin/bash

KIBANAUSER=lutece
KIBANAPASS="RKOmBI1sWaa*SFm1gx*H"


response="500"
while [ $response != "200" ]
do
  sleep 20
  response=$(curl -so /dev/null -w "%{http_code}\n" localhost:5601/api/uptime/settings) 
  if [ $response = "200" ]
  then
    response_elastic="500"
    while [ $response_elastic != "200" ]
    do
      sleep 5
      response_elastic=$(curl -so /dev/null -w "%{http_code}\n" elasticsearch:9200/_cluster/health)
      if [ $response_elastic = "200" ]
      then
        curl -X POST -u $KIBANAUSER:$KIBANAPASS "localhost:5601/api/spaces/space" -H 'kbn-xsrf: true' -H 'Content-Type: application/json' -d'
        {
          "id": "dev",
          "name": "dev",
          "description" : "Dev Space",
          "color": "#aabbcc",
          "initials": "DV",
          "disabledFeatures": [],
          "imageUrl": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAJUUlEQVR4nMyZezyU6fvH73lmGDNmZ9WEpGXJorIbkRpnRYpFzr9sJCL5ibKFzXFKS7ZdWlqyy25pFXJM6OBYssohW8uyipVl5XxmZp6Z70vPfieNmWcmtb2+n79m7ud6rvv9uo/XdT04NpsN/peEe8P3Z+cYydnleeWNbDbb2nijj+NWgpjomzjEvMkIFVQ0hiXm/tk3xGlZLb0s2t/BykjjXQM1t3WHJOTcaWyHMBinHZuDPSwgDCb2x+KM4lqYxTbQVKH52GxcK/8ugP4eHDuRXJBRUstmAx11pZjDjhuUP+A8fdzRc+zrzHvNHRgAHM20I31sVklK/FtAc3TGd5nlZy6UTE7PSVPIUb52jmbai83YAGSV1kUm5fcOjBLFRANczQ7tNhXDi7xloKKqh6GJOZ1/DeJFcD7/t+3o3h0kohiK/dTMXFz6jYSM27N0hpwM5aSv7S7jjW8H6PfOvsC4zKr6NgDApwYbog7ZKchKCuMaANDdNxSWmJtf0QgAMNqk+lWAk7L8yqUDjU/OfPVTcVJWBYMJr1uzKsbfwVBLVUiUhbrb1B4cn/3ojx4cDutlZxjkbiHxHvH1gGAW6+frtSeSCwZGJgAAEISJ9rPfb2eIw2KXADTvEGal5VefPF84NjlDkSCFelrutdLDYiGhgO41dwTHZTW3PwMAaKjKK8iuKKhsgmHWWsX5QTLatJRBQjQ4OnEq5dqFwrswi62mJBtz2FF/ozIa0MDwRMCZy4WVTQAAxdWSYQesbbdpAgDauvpoSQXX7zQDALbrqMX4O6z5QAp5ZWR8Ki795tVbD6Zn6cabVIM9LFQ+lEHHannaS0vKL615BACw0N8QH+QstZzMG8jUK/b+404yiRC0z9zL3khU5JWLhbMUKBKk2vQwyvviqXnV0alFI+PT4gS8OEH0+fAEFgsdsDc6vv/T98QJ6FhV9W3BZ7NanvTqaXx0/VzAywfs/6r1aS+Z6v2JXWj/0Bibj5hM2D/mEpnq7R6equMSRaZ6L9fzOfbNleGxSQaTmXK1Qt7sczLVW8ni2MXCuzAM8/ODiM5gGnvEkKneXb0DnEZo4QQDMH/4LhxALmGxkPXW+ePk6q0Hjzt6tmqvrbkYGnvEaRlZHIfFetoZNWXR3HfpD45M+kZf2heWij5IIjgscsoPjU5xGrnXOYTB8HXAgufn+IUBUUz04inPvHg/VYVXVswysnhcoHNFarCSnHR+RSOyUFCEWdQdj43Hg2R4cDo+au7WNWSKAQCWRhrW/E9edVW5ABczAEBDS5cw/l8baObcafqNfMBicVoIgu4mxACGWa8LJGyAhtOk4jQ2C2M5M0cn4HnEaN19Q/kVjUyYZa73sarCqjcCIhwIgKQEnC4AgLpHTyK+y/dzNjXX/2Rh++jEdFz6jeSsilk6AwBwMrnAacfmEE/LD1YuXyIQJCUDw6zB0UlpCt8NCACgJRXUNnf4OZtyWpgw/ENO1akfrg2PTa2QIJ34fxuCmOiZn0oul/ySV9bgu9tkamZuKUB3GtuPfZPp7WDkZq2PYkbAixxz22mopcJpOXelnAnDWAjab2sY6mW5jCwOAHDcrp14+fY36aVnLpQsdiIU0PnsitanvQLN0r/0IhLwC1uYMNNQSzXG32HdGllOoxhe5KjbTmcLKi0pP/NGHdddKhQQiYgP8bR0NBOwqOdpJidY0zOQ1D83nZuV/tngz3gar5KUOB/uJoLDphfdExao8kHrT4U1YxPTRptUDzgYi4kK2Or0G0UzqfFE/zAOEEWChP4K13XJF+hpz/OQb3OK7/6K/C2/35qWdyfK19YSNb+h3yxgT4wCjFBnGz9xA01MzYafy03KKqczYMXVkjQfG8XVkjGp169VPdxzPMVAU8VMV42fL0hqpbh5lIgO2sKfzy1nmbk3O6SWE0305AQDFbwIhigSpEA3c3cbfWRIL0UfuPfwj/Dv8qob2qob2vj1RAw6iY6CKPHn5qr6v7wdP+b5lBtIBIf1djAO3GdOJr0S0Oiof3Q7JTDndn34udye/hF+ndX/1knAi65XkkUBehEuUtTX8s4UuOfbcfumqEN2XDQc2ZloJXyxh19PYYm5Jp6xCzNrnnK1Uo3+XFd2Je/1zg20OB4Q3qChpQuHwy5/Xxzdg4w0CUlphAJC0cQkHd3ATFftfkb4lk/WoJs97uix8ou/UlonAAgLQUjGs9io/enI0dN3apoEHNb+n21XXC2FbgMA+PpCKZJ2CgBCxDNNu3qzo62L70LmiMViZRTX1v36BN0Mi4U8bAxsTTR5dvdylyGnanP7szk6Ey/6yu4TwUF2Jmv0NdH2DgDAIyItt6zh8umD6Gbxgc5IXYDOYD5s6wYArFhwoL8cIWX5lQaayr+292zZcyKvrGGhC39XdTe79eJEAVdH/9C4vAxFQXYFuhlCU1jZpOMS1dj6p8mWdXIyFB5AAICfo72dzLQ7ewbcwn4w9YrlRMSiokJl0EdczOqvRK5V5BsNInrY1r3j4BmX4yl/dPfbm2ql0TwWPn1lasgkQkrEvv12hkFxWfcfd27zjN29czPtoI0UalzGkSl1PbrB8+Hxk+cLLhXVstjsDSpypw87UDcocdnw2Pbaaopl3wcnhbpKLydnFP+itTsyKaucwYQFAvUPjfnFXOKZ+jBhOCmzfKNTxMVr91YsIyV8sacyNWgxDd9zCIKAszm1ITMywMVsZo4RHJ+t6xpVVteCDuQRnnahsIbF4t44lfW/6+/9Mvhs9twcw8/ZtCGT5mqpC0G8u0aLh0hEsYiDu5wtqEFxWWV1LbZHEnbofowyLyw2e9vmdeoqL0uO3X1DnwUnF1U3AwBMtqyPPeLIqVLwk7AlvdKaR8e/vfrk2XPkr5u13tkg7lCwvetv5Q//KZDl3HrgHpGG/FaQlTx1yNbCQF2Yjl6j6ElnMM9nV8T+WDw+NUuRIEX52jqbUxebsVjgckktLTm/f2icRMQf3bvTx2krXlC0uRQgRIOjE1/9WJKaV81gwprrPjzhY6O3oOhU29wR8m1OQ+v8LbvPSi/Q3RyldPF2gBA9efY8KC7r1i+/IUWnSJ9dEAZDSy5Ail3bqWpf+tl/JC+9BM9v9GnhenVzSEJO518DnBZ5GUrMYUeuzPXdAb2opjO/z6nM/+fji4aXvbHwNfJ/Beit6z8BAAD//3agHGi5H3NnAAAAAElFTkSuQmCC"
        }
        '

        curl -X POST -u $KIBANAUSER:$KIBANAPASS "localhost:5601/s/dev/api/saved_objects/_import?overwrite=true" -H "kbn-xsrf: true" \
            --form file=@/usr/share/kibana/export.ndjson -H 'kbn-xsrf: true'
      fi
    done
  fi
done &

exec /usr/local/bin/kibana-docker