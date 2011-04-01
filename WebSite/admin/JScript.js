// JScript 文件
    function checkNan(what)
    {
        if(isNaN(what.value))
        {
            what.value="";
            what.focus();
        }
    }
   function checkLength(what,l)
   {
        var len=parseInt(l);
            if(what.value.length>len)
            {
                what.value=what.value.substring(0,len);
                what.blur();
                what.focus();
            }
   }
