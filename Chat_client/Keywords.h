#pragma once
#include <string>
using key_t = const std::string;

struct Keywords
{
    key_t log{"login:"};         // login string
    key_t pas{"password:"};      // password string

    key_t name{"username:"};     // user name string

    key_t timesend{"timesend:"}; // timesend string
    key_t mess{"message:"};      // message string
    key_t sep{" "};              // separator

    // client to server
    key_t itLogon{"&itLoon&"};
    key_t itRegistration{"&itRegn&"};
    key_t itMessage{"&itMess&"};
    key_t itLogout{"&itLout&"};
    key_t itExit{"&itExit&"};

    key_t itCompName{"&itCmnm&"}; // select companion

    key_t itGetUsernames{"&itGtUn&"}; // get registered usernames
    key_t itGetMessages{"&itGtMs&"}; // get last messages

    // server to client packages
    key_t itUsernames{"&itUnms&"}; // it is registered usernames
    key_t itMessages{"&itMsgs&"}; // it is last messages
    key_t itEndOfPackage{"&itEnPa&"}; // it end of package
};
