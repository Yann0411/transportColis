export PGDATABASE=ocolis


sqitch init ocolis --engine pg

sqitch add version_1 -n "basic stucture"
sqitch add serial_number_TEXT -n "change serial number to TEXT"
sqitch add serial_number_UNIQUE -n "change serial number to UNIQUE"
sqitch add volume -n "change volume to height width , depth"
sqitch add tracking -n "adding tracking informations"

sqitch revert db:pg:ocolis
sqitch deploy db:pg:ocolis
sqitch verify db:pg:ocolis