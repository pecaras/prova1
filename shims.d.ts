// Auto-generated. Do not edit.


    /**
     * File system operations
     */
    //% weight=5 color=#002050 icon="\uf0a0"
declare namespace filesA {

	/**
	* Guarda un byte
	* @param name nom variable
	* @param valor (un byte)
	*/
	//% advanced=true weight=10
	//% blockId="filesA_SetByte" block="aaafiles create directory %name"
	//% blockExternalInputs=2 weight=90 blockGap=8 shim=filesA::filesA_SetByte
	function filesA_SetByte(name: string, value: number): void;
	
	/**
	* Retorna un valor
	* @param name nom variable
	* @param valor de variable
	*/
	//% advanced=true weight=10
	//% blockId="filesA_GetByte" block="aaafiles create directory %name"
	//% blockExternalInputs=1 weight=90 blockGap=8 shim=filesA::filesA_GetByte
	function filesA_GetByte(name: string): number;

    /**
     * Appends text and a new line to a file
     * @param filename file name, eg: "output.txt"
     * @param text the string to append to the end of the file
     */
    //% blockId="files_append_line" block="file %filename|append line %text"
    //% blockExternalInputs=1 weight=90 blockGap=8 shim=filesA::appendLine
    function appendLine(filename: string, text: string): void;

    /**
     * Appends text to a file
     * @param filename file name, eg: "output.txt"
     * @param text the string to append to the end of the file
     */
    //% blockId="fs_append_string" block="file %filename|append string %text"
    //% blockExternalInputs=1 weight=86 blockGap=8 shim=filesA::appendString
    function appendString(filename: string, text: string): void;

    /**
     * Reads the content of the file to send it to serial
     * @param filename file name, eg: "output.txt"
     */
    //% blockId="fs_write_to_serial" block="file %filename|read to serial"
    //% weight=80 shim=filesA::readToSerial
    function readToSerial(filename: string): void;

    /**
     * Removes the file. There is no undo for this operation.
     * @param filename name of the file to remove, eg: "output.txt"
     */
    //% blockId="fs_remove" block="file remove %filename"
    //% weight=80 advanced=true blockGap=8 shim=filesA::remove
    function remove(filename: string): void;

    /**
     * Creates a directory
     * @param name full qualified path to the new directory
     */
    //% advanced=true weight=10
    //% blockId=files_create_directory block="files create directory %name" shim=filesA::createDirectory
    function createDirectory(name: string): void;

    /**
     * Reads a number settings, -1 if not found.
     * @param name name of the settings, must be filename compatible, e.g.: setting
     */
    //% blockId=settings_read_number block="settings read number %name"
    //% weight=19 shim=filesA::settingsReadNumber
    function settingsReadNumber(name: string): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsOpen
    function fsOpen(path: string): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsFlush
    function fsFlush(fd: number): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsClose
    function fsClose(fd: number): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsRemove
    function fsRemove(name: string): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsSeek
    function fsSeek(fd: number, offset: number, flags: number): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsWriteString
    function fsWriteString(fd: number, text: string): number;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsWriteBuffer
    function fsWriteBuffer(fd: number, buffer: Buffer): number;

    /**
     */
    //% weight=0 advanced=true shim=filesA::fsReadBuffer
    function fsReadBuffer(fd: number, length: number): Buffer;

    /**
     *
     */
    //% weight=0 advanced=true shim=filesA::fsRead
    function fsRead(fd: number): number;
	
}

// Auto-generated. Do not edit. Really.
