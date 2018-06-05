#include "pxt.h"
#include "MicroBitFile.h"
#include "MicroBitFileSystem.h"

using namespace pxt;

// v0 backward compat support
#ifndef PXT_BUFFER_DATA
#define PXT_BUFFER_DATA(buffer) buffer->payload
#endif

//
//
//
enum FileSystemSeekFlags {
    //% block=set
    Set = MB_SEEK_SET,
    //% block=current
    Current = MB_SEEK_CUR,
    //% block=end
    End = MB_SEEK_END
};

//
//
//
//
namespace filesA
{    
// Initializes file system. Must be called before any FS operation.
// built-in size computation for file system
// does not take into account size changes
// for compiled code
void initFileSystem()
{
    if (MicroBitFileSystem::defaultFileSystem == NULL)
    {
        new MicroBitFileSystem(pxt::afterProgramPage());
    }
}

//
//
//
//
//
//
//
void appendLine(StringData *filename, StringData *text)
{
    initFileSystem();
    ManagedString fn(filename);
    ManagedString t(text);
    MicroBitFile f(fn);
    f.append(t);
    f.append("\r\n");
    f.close();
}

//
//
//
//
//
//
//
void appendString(StringData *filename, StringData *text)
{
    initFileSystem();
    ManagedString fn(filename);
    ManagedString t(text);
    MicroBitFile f(fn);
    f.append(t);
    f.close();
}

//
//
//
//
//
//
void readToSerial(StringData* filename) {
    initFileSystem();
    ManagedString fn(filename);
    MicroBitFile f(fn);
    char buf[32];
    int read = 0;
    while((read = f.read(buf, sizeof(buf) * sizeof(char))) > 0) {
         uBit.serial.send((uint8_t*)buf, read * sizeof(char), SYNC_SPINWAIT);
    }   
    f.close();    
}

//
//
//
//
//
//
void remove(StringData *filename)
{
    initFileSystem();
    ManagedString fn(filename);
    MicroBitFileSystem::defaultFileSystem->remove(fn.toCharArray());
}

//
//
//
//
//
//
void createDirectory(StringData* name) {
    initFileSystem();
    ManagedString fn(name);
    MicroBitFileSystem::defaultFileSystem->createDirectory(fn.toCharArray());
}

//
//
//
//
//
//
int settingsReadNumber(StringData* name) {
    initFileSystem();
    MicroBitFileSystem::defaultFileSystem->createDirectory("settings");
    MicroBitFile f("settings/" + ManagedString(name), MB_READ);
    if (!f.isValid()) 
        return -1;
    ManagedString v;
    ManagedString buff;
    do {
        buff = f.read(32);        
        v = v + buff;
    } while(buff.length() > 0);
    return atoi(v.toCharArray());
}

//
//
//
//
int fsOpen(StringData* path) {
    initFileSystem();
    ManagedString fn(path);
    return MicroBitFileSystem::defaultFileSystem->open(fn.toCharArray(), MB_READ|MB_WRITE|MB_CREAT);
}

//
//
//
//
int fsFlush(int fd) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;

    initFileSystem();
    return MicroBitFileSystem::defaultFileSystem->flush(fd);
}

//
//
//
//
int fsClose(int fd) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;

    initFileSystem();
    return MicroBitFileSystem::defaultFileSystem->close(fd);
}

//
//
//
//
int fsRemove(StringData* name) {
    initFileSystem();
    ManagedString fn(name);
    return MicroBitFileSystem::defaultFileSystem->remove(fn.toCharArray());
}

//
//
//
//
int fsSeek(int fd, int offset, int flags) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;
    if (offset < 0) return MICROBIT_INVALID_PARAMETER;

    initFileSystem();
    return MicroBitFileSystem::defaultFileSystem->seek(fd, offset, flags);
}

//
//
//
//
int fsWriteString(int fd, StringData* text) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;

    initFileSystem();
    ManagedString s(text);
    return MicroBitFileSystem::defaultFileSystem->write(fd, (uint8_t*)s.toCharArray(), s.length());
}

//
//
//
//
int fsWriteBuffer(int fd, Buffer buffer) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;

    initFileSystem();
    return MicroBitFileSystem::defaultFileSystem->write(fd, PXT_BUFFER_DATA(buffer), buffer->length);
}

//
//
//
Buffer fsReadBuffer(int fd, int length) {
    if (fd < 0 || length < 0) 
        return ManagedBuffer().leakData();

    initFileSystem();
    ManagedBuffer buf(length);

    int ret = MicroBitFileSystem::defaultFileSystem->read(fd, buf.getBytes(), buf.length());

    if (ret < 0) return ManagedBuffer().leakData();
    else if (ret != length) return buf.slice(0, ret).leakData();
    else return buf.leakData();
}

//
//
//
//
int fsRead(int fd) {
    if (fd < 0) return MICROBIT_NOT_SUPPORTED;
    initFileSystem();

    char c[1];    
    int ret = MicroBitFileSystem::defaultFileSystem->read(fd, (uint8_t*)&c, 1);
    if (ret != 1) return ret;
    else return c[0];
}

}

