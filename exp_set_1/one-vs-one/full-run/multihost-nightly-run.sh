EMAIL="mandaarp@gmail.com"
DATE=`date +%m-%d-%Y`
HOSTNAME=`hostname`
STDOUT="stdout.txt"
STDERR="stderr.txt"
FILE="/u/mandar/thesis-code/experimental-code/one-vs-one/Main.py"
EXP="exp_set_1:one-vs-one"
THESIS="[THESIS-${HOSTNAME}-${EXP}"
proto_gen_method="ImprintS2Prototypes"
dataset_prefix="/u/mandar/thesis-images/one-vs-one/"

mkdir "${DATE}-${HOSTNAME}"
cd "${DATE}-${HOSTNAME}"

TEST=$1
num_of_prototypes=$2
mkdir ${TEST}
cd ${TEST}
echo "EoM" | mailx -s "${THESIS} ${DATE}: ${TEST} execution started ..." ${EMAIL}
time python ${FILE} -p ${num_of_prototypes} -t ${proto_gen_method} -s ${dataset_prefix} > ${STDOUT} 2> ${STDERR} < /dev/null
(uuencode ${STDOUT} ${STDOUT}; uuencode ${STDERR} ${STDERR} ) | mailx -s "${THESIS} ${DATE}: ${TEST} execution completed ..." ${EMAIL}
cd ..
