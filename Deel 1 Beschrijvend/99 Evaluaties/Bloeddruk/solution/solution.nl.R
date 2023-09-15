# Gegevens
dia_druk <- 101.14
gem_druk <- 122.54

# Bepaal hieronder de schatting voor het hartslag in rust
sys_druk <- round((gem_druk - dia_druk) * 3 + dia_druk, 2)
