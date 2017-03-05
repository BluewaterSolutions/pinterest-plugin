component extends="coldbox.system.Interceptor"{
    function configure(){}
    function cbui_beforeBodyEnd(event,interceptData){
        
        saveContent variable="generatedHTML"{
            writeOutput('<script async defer src="//assets.pinterest.com/js/pinit.js"></script>');
        };
        appendToBuffer( generatedHTML );
    }
}   