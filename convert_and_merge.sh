## make a working directory

WORK_DIR=/tmp/`date +%s`
mkdir $WORK_DIR

## plantuml -> svg

java -jar /usr/local/bin/plantuml.jar -o $WORK_DIR -tsvg "$@"

## svg -> pdf

for FILE in `ls $WORK_DIR/*.svg`
do
  PDF_FILE=`basename $FILE .svg`.pdf
  inkscape -f $FILE -A $WORK_DIR/$PDF_FILE
done

## concat pdf

OUTPUT_FILE=output.pdf
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$OUTPUT_FILE `ls $WORK_DIR/*.pdf`
echo "finish. ($OUTPUT_FILE)"
