PGDATABASE=ocolis


sqitch init ocolis --engine pg

sqitch add 1.init -n "basic structure"
sqitch add 2.expedition -n "ajout expedition"

sqitch revert db:pg:ocolis
sqitch deploy db:pg:ocolis
sqitch verify db:pg:ocolis