```{r}
august_nowcast = nowcast |>
  slice("month", "Aug")
august_nowcast

august_forecast = forecast_2075 |>
  slice("month", "Aug")
august_forecast

z = c(august_nowcast, august_forecast, along = list(year = c(2025,2075)))

x = august_forecast - august_nowcast

plot(z["default_rf"])

plot(x["default_rf"])
```


