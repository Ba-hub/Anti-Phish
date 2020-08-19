# Script: Anti Phishing URL
#Coded By: Ghosthub (b@b@y)

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo -e "\e[    𝗦𝗖𝗥𝗜𝗣𝗧𝗦 :~ \e[40;38;5;82m   𝔸𝕟𝕥𝕚ℙ𝕙𝕚𝕤𝕄1�7 \e[0m"
echo -e "\e[    𝗠𝗔𝗗𝗘 𝗕𝗬 :~ \e[40;38;5;82m     𝔾𝕙𝕠𝕤𝕥𝕙𝕦𝕓 \e[0m" 
echo
echo
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m"
echo
echo -n "Enter Your Phishing URL here (with http or https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m ### Hooking Domain ###\e[0m"
echo 'Domain to Hook  the Phishing URL (with http or https), ex https://google.com, http://anything.com):'
echo
read mask
url_checker $mask
echo
echo 'Type Social Engineering Words:(like new-offer, free-money, best-tricks,media-news)'
echo
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo
read words
echo
echo 'Generating Anti-Phish Link...'
echo
echo 'Here is Your Anti-Phish URL..'
echo
final=$mask-$words@$shorter
echo $final
    