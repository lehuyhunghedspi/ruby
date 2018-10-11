a=1.0
b=2.0
c=1.0	

if a==0
	if b==0
		if c==0
			print("phuong trinh co vo so nghiem\n")
		end
	else
		print("phuong trinh co nghiem la: ",c/b)
	end
else
	delta=b**2-4*a*c
	if delta>0
		print("phuong trinh co hai nghiem:  ")
		candelta=Math.sqrt(delta)
		print((-b+candelta)/2/a,"\t",(-b-candelta)/2/a,"\n")	
	else
		if delta==0
			print("phuong trinh co nghiem kep: ",(b/2/a))
		else
			print("phuong trinh vo nghiem\n")
		end
	end

end
