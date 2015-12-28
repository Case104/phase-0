line = 60
toc = "Table of Contents"
ch1 = "Chapter 1: Getting Started"
ch2 = "Chapter 2: Numbers"
ch3 = "Chapter 3: Letters"
pg1 = "Page 1"
pg9 = "Page 9"
pg13 = "Page 13"

def contents(chapter, page)
	line = 60
	puts (chapter.ljust(line/2)) + (page.rjust(line/2))
end
puts (toc.center(line))
contents(ch1, pg1)
contents(ch2, pg9)
contents(ch3, pg13)