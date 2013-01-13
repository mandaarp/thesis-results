EMAIL="mandaarp@gmail.com"
DATE=`date +%m-%d-%Y`
STDOUT="stdout.txt"
STDERR="stderr.txt"
FILE="/u/mandar/thesis-code/src/Main.py"
PREFIX="[THESIS]"
mkdir ${DATE}
cd ${DATE}

echo "nightly execution started for ${DATE}" | mailx -s "${THESIS} nightly execution started for ${DATE}" ${EMAIL}

TEST=test1
P=50
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test2
P=100
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test3
P=150
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test4
P=200
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test5
P=250
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test6
P=300
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test7
P=350
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test8
P=400
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test9
P=450
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test10
P=500
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${P} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

