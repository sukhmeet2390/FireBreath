/**********************************************************\

  Auto-generated firstAPI.h

\**********************************************************/

#include <string>
#include <sstream>
#include <boost/weak_ptr.hpp>
#include "JSAPIAuto.h"
#include "BrowserHost.h"
#include "first.h"

#ifndef H_firstAPI
#define H_firstAPI

class firstAPI : public FB::JSAPIAuto
{
public:
    ////////////////////////////////////////////////////////////////////////////
    /// @fn firstAPI::firstAPI(const firstPtr& plugin, const FB::BrowserHostPtr host)
    ///
    /// @brief  Constructor for your JSAPI object.
    ///         You should register your methods, properties, and events
    ///         that should be accessible to Javascript from here.
    ///
    /// @see FB::JSAPIAuto::registerMethod
    /// @see FB::JSAPIAuto::registerProperty
    /// @see FB::JSAPIAuto::registerEvent
    ////////////////////////////////////////////////////////////////////////////
    firstAPI(const firstPtr& plugin, const FB::BrowserHostPtr& host) :
        m_plugin(plugin), m_host(host)
    {
        registerMethod("echo",      make_method(this, &firstAPI::echo));
        registerMethod("testEvent", make_method(this, &firstAPI::testEvent));
		registerMethod("add",		make_method(this, &firstAPI::add));
		
		registerMethod("printconsole" , make_method(this, &firstAPI::printconsole));

        registerProperty("mystring", make_property(this, &firstAPI::get_mystring));
        // Read-write property
        registerProperty("testString",
                         make_property(this,
                                       &firstAPI::get_testString,
                                       &firstAPI::set_testString));
        
        // Read-only property
        registerProperty("version",
                         make_property(this,
                                       &firstAPI::get_version));
    }

    ///////////////////////////////////////////////////////////////////////////////
    /// @fn firstAPI::~firstAPI()
    ///
    /// @brief  Destructor.  Remember that this object will not be released until
    ///         the browser is done with it; this will almost definitely be after
    ///         the plugin is released.
    ///////////////////////////////////////////////////////////////////////////////
    virtual ~firstAPI() {};

    firstPtr getPlugin();

    // Read/Write property ${PROPERTY.ident}
    std::string get_testString();
    void set_testString(const std::string& val);
	
	//My methods
	int add(int a, int b);
	std::string get_mystring();
	//void set_master(const std:: string& name);
	
    // Read-only property ${PROPERTY.ident}
    std::string get_version();

    // Method echo
    FB::variant echo(const FB::variant& msg);
    
    // Event helpers
    FB_JSAPI_EVENT(test, 0, ());
    FB_JSAPI_EVENT(echo, 2, (const FB::variant&, const int));

    // Method test-event
    void testEvent();
	void printconsole();
protected : 
	std::string mystring;
private:
    firstWeakPtr m_plugin;
    FB::BrowserHostPtr m_host;

    std::string m_testString;
	
};

#endif // H_firstAPI

