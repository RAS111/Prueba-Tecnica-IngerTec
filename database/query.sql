select rt.descrip, count(rt.descrip) as cantidad from tresource t 
inner join tresource_type rt 
on rt.idResourceType  = t.idResourceType 
group by rt.descrip order by idResource;