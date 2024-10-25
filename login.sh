blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'

correct_password="010203"
while true; do
  # Menggunakan echo -e untuk mencetak warna sebelum menggunakan read
  echo -ne "${blue}masukan password>>  "
  read pwd
  if [ "$pwd" == "$correct_password" ]; then
    echo -e "${green}akses di berikan!"
    echo -e "${yellow}______________________________________________________"
    sleep 1
    echo -e "${yellow} (+)  git clone https://github.com/wr-tiger/TGR-tools.git "
    echo -e "${yellow} (+)  https://www.mediafire.com/file/3tng6z5dogsnsli/text.txt/file "
    echo -e "${yellow}______________________________________________________"
    sleep 2

    # Menambahkan menu pilihan
    echo -e "${cyan}Pilih opsi berikut:"
    echo -e "${purple}1) Opsi 1: Jalankan git clone"
    echo -e "${purple}2) Opsi 2: Buka link mediafire"
    echo -ne "${blue}Pilih opsi>> "
    read option

    # Menggunakan if untuk memproses pilihan
    if [ "$option" == "1" ]; then
      echo -e "${green}Menjalankan git clone..."
      git clone https://github.com/wr-tiger/TGR-tools.git
    elif [ "$option" == "2" ]; then
      echo -e "${green}Membuka link mediafire..."
      xdg-open "https://www.mediafire.com/file/3tng6z5dogsnsli/text.txt/file"
    else
      echo -e "${red}Pilihan tidak valid."
    fi
    break
  else
    echo -e "${red}akses di tolak, password salah"
  fi
done
