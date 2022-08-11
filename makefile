CC_OPT=
SRC_DIR=./src
TRG_DIR=./target

main.out: main.o
	g++ -o ${TRG_DIR}/main.out ${TRG_DIR}/main.o ${CC_OPT}
	cp -f ${TRG_DIR}/main.out main.out

main.o:
	g++ -c ${SRC_DIR}/main.cpp -o ${TRG_DIR}/main.o

clean: 
	rm -f ${TRG_DIR}/*.o ${TRG_DIR}/*.out *.out