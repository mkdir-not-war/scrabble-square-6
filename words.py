output = open("words6.lp", "w")

with open('./words6.txt') as f:
    for line in f:
        w = line.strip()
        word = "word(" + w + ").\n"
        comma = ", "
        wordl = "wordl(" + w + comma
        for i in range(0,6):
            wordl += w[i]
            if i < 5:
                wordl += comma
        wordl += ").\n"
        output.write(word)
        output.write(wordl)
    
f.close()
output.close()


    
