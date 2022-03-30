for i in range (0,2):
	for j in range(0,2):
		for k in range(0,2):
			for l in range(0,2):
				for m in range(0,2):
					print("x = 5'b"+str(i)+str(j)+str(k)+ str(l)+str(m)+";\n#20\nif(y != 0) begin\n\t$display(\"wrong output\");\nend")
