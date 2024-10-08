-- ExamineItemInstance ID decoder
import "Vinny.Common.UTF8Decode"
import "Vinny.Common.Inflate"

local xpat = "<ExamineItemInstance:ItemInfo:(.+)>%[(.-)%]<\\ExamineItemInstance>"

function EII_ID(str)
    local ii,name = str:match(xpat)
	if ii then
		local dii = Decode(ii) -- decode UTF8
		local iit = {}
		inflate_zlib( dii, iit ) -- inflate compressed data
	    local id = string.format("%02X%02X%02X",iit[11],iit[10],iit[9])
		return id:sub(-5),name,iit
	end
end
