EMAIL="mandaarp@gmail.com"
DATE=`date +%m-%d-%Y`
HOSTNAME=`hostname`
STDOUT="stdout.txt"
STDERR="stderr.txt"
DECISION_VALUES_FILE="decision_values.csv"
CLASSIFICATION_RESULT_FILE="classification_result.csv"
FILE="/u/mandar/thesis-code/src/Main.py"
EXP="exp_set_1:one-vs-all...TEST RUN"
THESIS="[THESIS-${HOSTNAME}-${EXP}"
proto_gen_method="ImprintS2Prototypes"
dataset_prefix="/u/mandar/thesis-images/one-vs-all/"


mkdir "${DATE}-${HOSTNAME}"
cd "${DATE}-${HOSTNAME}"

echo "FILE: ${FILE}\n dataset_prefix:${dataset_prefix}" | mailx -s "${THESIS} nightly execution started for ${DATE}" ${EMAIL}

TEST=$1
num_of_prototypes=$2
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR}; uuencode ${DECISION_VALUES_FILE} ${DECISION_VALUES_FILE}; uuencode ${CLASSIFICATION_RESULT_FILE} ${CLASSIFICATION_RESULT_FILE} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..
