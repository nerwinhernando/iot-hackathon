#declare imports
import multiprocessing
import argparse
import signal

import hello1
import hello2
import pir

try:
    import configparser
except ImportError:
    from ConfigParser import ConfigParser

def signal_handler(signal, frame):
    print('You pressed Ctrl+C!, Gracefully stopping software')
    kill_process()

def kill_process():
    living_processes = []
    for p in procs:
        if p.is_alive():
            living_processes.append(p)
    if living_processes > 0:
        for p in living_processes:
            p.terminate()

if __name__ == '__main__':
    procs = []
    run = []

    try:
        parser = argparse.ArgumentParser(description='Run IDIoT software by Team Analog | Bobi | Cris | Cuds | Ed | Ner | ')
        parser.add_argument('--hello', required=False, default=False, help=': Test module', action='store_true')
        parser.add_argument('--run', required=False, default=False, help=': Run all modules', action='store_true')
        parser.add_argument('--pir', required=False, default=False, help=': Run PIR module', action='store_true')
        parser.add_argument('--kill', required=False, default=False, help=': Kill all modules', action='store_true')

        args = parser.parse_args()

        if args.run:
            run.append(pir.function)

        else:
            if args.pir:
                run.append(pir.function)

            if args.hello:
                run.append(hello1.function)
                run.append(hello2.function)

        for func in run:
            procs.append(multiprocessing.Process(target=func)) #args=(arg1, arg2)
            procs[-1].start()

        signal.signal(signal.SIGINT, signal_handler)
        signal.pause()

    except Exception as error:
        print ("Exception occured! Killing all processes", error)
        kill_process()