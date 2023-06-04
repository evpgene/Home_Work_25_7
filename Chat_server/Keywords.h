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
    key_t itLogon{"&itLoon&"}; // logon cmd
    key_t itRegistration{"&itRegn&"}; // registration cmd
    key_t itMessage{"&itMess&"}; // message cmd
    key_t itLogout{"&itLout&"}; // logout cmd
    key_t itExit{"&itExit&"}; // end sesion cmd

    key_t itCompName{"&itCmnm&"}; // select companion cmd

    key_t itGetUsernames{"&itGtUn&"}; // get registered usernames cmd
    key_t itContinueUsernames{"&itCntu&"}; // continue send usernames cmd
    key_t itGetMessages{"&itGtMs&"}; // get last messages cmd
    key_t itContinueMassages{"&itCntm&"}; // continue send message cmd

    // server to client packages
    key_t itUsernames{"&itUnms&"}; // it is usernames package sts
    key_t itUsernamesEnd{"&itUnme&"}; // it is usernames package end sts
    key_t itMessages{"&itMsgs&"}; // it is last messages sts
    key_t itMessagesEnd{"&itMsge&"}; // it is last messages end sts
    key_t itEndOfPackage{"&itEnPa&"}; // it end of package sts
};
