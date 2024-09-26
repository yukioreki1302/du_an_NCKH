# Bu???c 2: T???i thu vi???n ggplot2
library(ggplot2)

# Bu???c 3: Chu???n b??? d??? li???u
coffee_data <- data.frame(
  Year = 2017:2023,
  Vietnam = c(2257, 1917, 1653, 1731, 1965, 2269, 2790),  # Giá xu???t kh???u cà phê Vi???t Nam (USD/t???n)
  Brazil = c(2116, 1957, 1597, 1392, 1718, 2021, 2182),   # Giá xu???t kh???u cà phê Brazil (USD/t???n)
  Colombia = c(1522, 1400, 1300, 1250, 1850, 2100, 2150) # Giá xu???t kh???u cà phê Colombia (USD/t???n)
)

# Bu???c 4: V??? bi???u d???
ggplot(coffee_data, aes(x = Year)) +
  # V??? du???ng bi???u di???n cho t???ng qu???c gia
  geom_line(aes(y = Vietnam, color = 'Vietnam'), linewidth = 1.5) +
  geom_line(aes(y = Brazil, color = 'Brazil'), linewidth = 1.5) +
  geom_line(aes(y = Colombia, color = 'Colombia'), linewidth = 1.5) +
  
  # Thêm tiêu d??? và các nhãn tr???c
  labs(title = 'Bi???u d??? So Sánh Giá Xu???t Kh???u Cà Phê (2017-2023)',
       x = 'Nam',
       y = 'Giá xu???t kh???u (USD/t???n)') +
  
  # Tùy ch???nh màu s???c cho các qu???c gia
  scale_color_manual(values = c('Vietnam' = 'red', 'Brazil' = 'green', 'Colombia' = 'blue')) +
  
  # Tùy ch???nh giao di???n
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    legend.title = element_blank(),
    legend.position = "bottom"
  )

