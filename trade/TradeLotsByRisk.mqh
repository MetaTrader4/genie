// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Calculate a lots setting by risk

/*
// Lots By Risk
input string Input_Order_LBR                 = "--- Lots By Risk ---"; // Lots By Risk
input bool Input_Order_LBR_On                = false; // (On/Off) Lots By Risk
input ENUM_ACCOUNT_FUND Input_Order_LBR_Mode = 0;     // Fund Mode
input double Input_Order_LBR_Risk            = 5;     // (Percentage) Percentage of Fund to Risk
input double Input_Order_LBR_RiskRange       = 1000;  // (Point Unit) Total Range to Match the Risk
*/

#include "..\account\ENUM_ACCOUNT_FUND.mqh"

// @param risk Percentage of risk
double TradeLotsByRisk( string symbol, ENUM_ACCOUNT_FUND mode, double risk, double range ) {
    double lots_risk = 0;
    if ( mode == ACCOUNT_FUND_BALANCE ) {
        lots_risk = AccountBalance() * risk / 100;
    }
    else if ( mode == ACCOUNT_FUND_EQUITY ) {
        lots_risk = AccountEquity() * risk / 100;
    }
    double lots = NULL;
    if ( range != 0 ) {
        lots = lots_risk / ( range * MarketInfo( symbol, MODE_TICKVALUE ) );
    }

    return lots;
}

