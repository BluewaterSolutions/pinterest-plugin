/**
* A Pinterest widget for ContentBox
*/
component extends="contentbox.models.ui.BaseWidget" singleton{
    PinterestPinPlugin function init(){
        // Widget Properties
        setName( "PinterestPinPlugin" );
        setVersion( "1.0.0" );
        setDescription( "Generates Pinterest Pin Plugin" );
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
    * @width.hint Small,Medium,Large.
    * @width.options small,medium,large
    * @hidedescription.hint Hide or Show Description.
    * @hidedescription.options true,false
    */
    any function renderIt(	string PinterestURL="https://www.pinterest.com/pin/357825132878748432/",
    						string width="large",
                            boolean hidedescription=false
    					){
        var event       = getRequestContext();
        var cbSettings  = event.getValue(name="cbSettings",private=true);
        var captcha     = "";
        var PinterestPinPlugin = "<a data-pin-do='embedPin' 
                        data-pin-width='#arguments.width#'  
                        data-pin-terse='#arguments.hidedescription#'
                        href='#arguments.PinterestURL#'></a>";
        return PinterestPinPlugin;
    }
}
