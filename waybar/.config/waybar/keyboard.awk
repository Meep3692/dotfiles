BEGIN{
    RS="";
    FS="\n";
    printf "{\"text\": \"Key\", \"tooltip\": \"Toggle built-in keyboard\", \"class\":\"";
}
$3=="  Identifier: 1:1:AT_Translated_Set_2_keyboard" && $7=="  Libinput Send Events: disabled"{
    printf "pressed"
}
END{
    printf "\"}\n"
}