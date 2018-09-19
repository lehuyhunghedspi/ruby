n=300


for i in 2..n
	flag=0
	for j in 2..(i-1)
		if i%j==0
			flag=1
		end
	end
	if flag==0
		print(i,",")
	end
end
print("\n")
