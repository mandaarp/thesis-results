EMAIL="mandaarp@gmail.com"
DATE=`date +%m-%d-%Y`
HOSTNAME=`hostname`
STDOUT="stdout.txt"
STDERR="stderr.txt"
FILE="/u/mandar/thesis-code/src/Main.py"
EXP="exp_set_10"
THESIS="[THESIS-${HOSTNAME}-${EXP}"
proto_gen_method="MakeUniformRandomS2Prototypes"
dataset_prefix="/u/mandar/thesis-images/dataset/neighbor_svm/"


mkdir "${DATE}-${HOSTNAME}"
cd "${DATE}-${HOSTNAME}"

echo "EoM" | mailx -s "${THESIS} nightly execution started for ${DATE}" ${EMAIL}

TEST=test1
num_of_prototypes=50

mkdir ${TEST}
cd ${TEST}

echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test2
num_of_prototypes=100

mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test3
num_of_prototypes=150
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test4
num_of_prototypes=200
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test5
num_of_prototypes=250
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test6
num_of_prototypes=300
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test7
num_of_prototypes=350
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test8
num_of_prototypes=400
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test9
num_of_prototypes=450
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

TEST=test10
num_of_prototypes=500
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..

echo "EoM" | mailx -s "${THESIS} nightly execution completed for ${DATE}" ${EMAIL}
