// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

// Things in Your Dreams that Pop Up When You Wish For it

// =====================================
// Account
// =====================================

#include "account/ENUM_ACCOUNT_FUND.mqh"

// =====================================
// Array
// =====================================

#include "array/ArrayAdd.mqh"
#include "array/ArrayClone.mqh"
#include "array/ArrayContains.mqh"
#include "array/ArrayIndexOf.mqh"
#include "array/ArrayInsert.mqh"
#include "array/ArrayPop.mqh"
#include "array/ArrayToString.mqh"

// =====================================
// Chart
// =====================================

#include "chart/BarBodyRange.mqh"
#include "chart/BarRange.mqh"
#include "chart/BarsRange.mqh"
#include "chart/BarTrend.mqh"
#include "chart/ENUM_TREND.mqh"
#include "chart/iBarShift.mqh"

// =====================================
// Datetime
// =====================================

#include "datetime/ENUM_WEEKDAY.mqh"
#include "datetime/StringToDateTime.mqh"

// =====================================
// Error
// =====================================

#include "error/error.mqh"

// =====================================
// Market
// =====================================

#include "market/ENUM_MARKET.mqh"
#include "market/MarketAsk.mqh"
#include "market/MarketBid.mqh"
#include "market/MarketLotDigits.mqh"
#include "market/MarketLotMax.mqh"
#include "market/MarketLotMin.mqh"
#include "market/MarketLotsNormalized.mqh"
#include "market/MarketPip.mqh"
#include "market/MarketPoint.mqh"
#include "market/MarketPriceDigits.mqh"
#include "market/MarketPriceNormalized.mqh"
#include "market/MarketPricePoint.mqh"
#include "market/MarketSpread.mqh"
#include "market/MarketSymbolExists.mqh"
#include "market/MarketTickSize.mqh"
#include "market/MarketTickValue.mqh"

// =====================================
// Math
// =====================================

#include "math/ENUM_COMPARISON.mqh"
#include "math/ENUM_LINEAR_CROSS.mqh"
#include "math/ENUM_LINEAR_SECTION.mqh"
#include "math/ENUM_LOGICAL.mqh"
#include "math/MathDigits.mqh"
#include "math/MathFraction.mqh"
#include "math/MathLinearSection.mqh"

// =====================================
// Oop
// =====================================

#include "oop/PointerDelete.mqh"
#include "oop/PointerEquals.mqh"
#include "oop/PointerReplace.mqh"
#include "oop/PointerSet.mqh"

// =====================================
// Order
// =====================================

//@module-notready #include "order/config.mqh"
#include "order/ENUM_ORDER_POOL.mqh"
#include "order/ENUM_ORDER_ROUTINE.mqh"
#include "order/OrderClose.mqh"
#include "order/OrderClosePrice.mqh"
#include "order/OrderCloseTime.mqh"
#include "order/OrderCmd.mqh"
#include "order/OrderComment.mqh"
#include "order/OrderCommission.mqh"
#include "order/OrderDelete.mqh"
#include "order/OrderDestroy.mqh"
#include "order/OrderExpiration.mqh"
#include "order/OrderHasFamily.mqh"
#include "order/OrderIsClosed.mqh"
#include "order/OrderIsFilled.mqh"
#include "order/OrderIsMatched.mqh"
#include "order/OrderLotDigits.mqh"
#include "order/OrderLots.mqh"
#include "order/OrderLotsNormalized.mqh"
#include "order/OrderMagic.mqh"
#include "order/OrderMagicNumber.mqh"
#include "order/OrderModify.mqh"
#include "order/OrderModifyStoploss.mqh"
#include "order/OrderModifyTakeprofit.mqh"
#include "order/OrderOpenPrice.mqh"
#include "order/OrderOpenTime.mqh"
#include "order/OrderPriceDigits.mqh"
#include "order/OrderPriceIsDefensive.mqh"
#include "order/OrderPriceIsOffensive.mqh"
#include "order/OrderPriceNormalized.mqh"
#include "order/OrderPricePoint.mqh"
#include "order/OrderPriceToClose.mqh"
#include "order/OrderPriceToOpen.mqh"
#include "order/OrderProfit.mqh"
#include "order/OrderProfitInPoint.mqh"
#include "order/OrderRoutine.mqh"
#include "order/OrdersCollect.mqh"
#include "order/OrdersCollectByTime.mqh"
#include "order/OrdersCount.mqh"
#include "order/OrdersCountByTime.mqh"
#include "order/OrdersDestroy.mqh"
#include "order/OrderSelect.mqh"
#include "order/OrderSend.mqh"
#include "order/OrderSpread.mqh"
#include "order/OrderStopLoss.mqh"
#include "order/OrderStoplossIsValidated.mqh"
#include "order/OrdersTotal.mqh"
#include "order/OrderSwap.mqh"
#include "order/OrderSymbol.mqh"
#include "order/OrderTakeProfit.mqh"
#include "order/OrderTakeprofitIsValidated.mqh"
#include "order/OrderTicket.mqh"
#include "order/OrderTradeDir.mqh"
#include "order/OrderTradeDirGroup.mqh"
#include "order/OrderTradeDirGroupReverse.mqh"
#include "order/OrderType.mqh"
#include "order/OrderTypeMatchDir.mqh"

// =====================================
// Param
// =====================================

//@module-notready #include "param/order.mqh"
//@module-notready #include "param/PriceMoveParam.mqh"
//@module-notready #include "param/PriceParam.mqh"
#include "param/PriceRangeParam.mqh"

// =====================================
// String
// =====================================

#include "string/StringMatch.mqh"
#include "string/StringTrim.mqh"

// =====================================
// Trade
// =====================================

#include "trade/ENUM_PRICE_RANGE.mqh"
#include "trade/ENUM_TRADE_DIR.mqh"
//@module-deprecated #include "trade/ENUM_TRADE_PRICE.mqh"
#include "trade/PointUnitToPoint.mqh"
#include "trade/PriceRangeConvert.mqh"
#include "trade/TradeCmdByDir.mqh"
#include "trade/TradeDirGroup.mqh"
#include "trade/TradeDirGroupReverse.mqh"
#include "trade/TradeDirMacroMatch.mqh"
#include "trade/TradeLotsByRisk.mqh"
#include "trade/TradePriceConvert.mqh"
#include "trade/TradePriceMove.mqh"
#include "trade/TradePriceToClose.mqh"
#include "trade/TradePriceToOpen.mqh"
#include "trade/Trade_Color.mqh"
#include "trade/Trade_Error.mqh"
