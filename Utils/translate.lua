return function(en, th)
	if _G.Thailand or getgenv().Thai or _G.Thai then
		return tostring(th)
	else 
		return tostring(en)
	end 
end
