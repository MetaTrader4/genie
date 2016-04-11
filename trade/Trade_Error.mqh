// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Trade Error Groups

#include "../error/error.mqh"

int Trade_Error_Retry[] = {
    ERR_TOO_FREQUENT_REQUESTS,
    ERR_TRADE_TIMEOUT,
    ERR_PRICE_CHANGED,
    //ERR_OFF_QUOTES,
    ERR_BROKER_BUSY,
    ERR_REQUOTE,
    ERR_TOO_MANY_REQUESTS,
    ERR_TRADE_CONTEXT_BUSY
};
