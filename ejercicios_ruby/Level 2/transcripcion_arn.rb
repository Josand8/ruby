# 1. Definir un metodo llamado "transcribe" que recibba un string.
# 2. Tomar cada caracter y reemplazarlo.
# G por C
# C por G
# T por A
# A por U

def transcribe(string)
    hash = {"G"=>"C", "C"=>"G", "T"=>"A", "A"=>"U"}
    new_array = []
    string_arr = string.upcase.chars()
    string_arr.each do |letter|
        new_array.push(hash[letter])
    end
    puts new_array.join("")
end
transcribe("G")
transcribe("C")
transcribe("T")
transcribe("A")
transcribe("ACGTGGTCTTAA")