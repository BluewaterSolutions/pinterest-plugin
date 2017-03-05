/**
* A Pinterest widget for ContentBox
*/
component extends="contentbox.models.ui.BaseWidget" singleton{
    PinterestProfilePlugin function init(){
        // Widget Properties
        setName( "PinterestProfilePlugin" );
        setVersion( "1.0.0" );
        setDescription( "Generates Pinterest Page Plugin" );
        setAuthor( "Bluewater Business Solutions" );
        setAuthorURL( "http://www.bluewatersolutions.com" );
        setIcon( "Pinterest" );
        setCategory( "Social Media" );
        return this;
    }
    /**
    * The main commenting form widget
    * @PinterestURL.hint The URL of the Pinterest Profile
    * @PinterestURL.label Pinterest URL
    * @width.hint The pixel width of the plugin.
    * @height.hint The pixel height of the plugin. 
    * @imagewidth.hint The pixel width of the images inside plugin.
    */
    any function renderIt(	string PinterestURL="https://www.pinterest.com/byandrewdavis/",
    						numeric width="400",
    						numeric height="240",
                            numeric imagewidth="80"
    					){
        var event       = getRequestContext();
        var cbSettings  = event.getValue(name="cbSettings",private=true);
        var captcha     = "";
        var PinterestProfilePlugin = "<a data-pin-do='embedUser' 
                        data-pin-board-width='#arguments.width#' 
                        data-pin-scale-height='#arguments.height#' 
                        data-pin-scale-width='#arguments.imagewidth#' 
                        href='#arguments.PinterestURL#'/></a>";
        return PinterestProfilePlugin;
    }
}
