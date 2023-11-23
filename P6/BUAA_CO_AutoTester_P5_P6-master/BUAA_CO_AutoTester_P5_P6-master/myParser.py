from argparse import ArgumentParser


def prepare_parser():
    parser = ArgumentParser(description="adaptable_command_generator")
    
    parser.add_argument("--test_size", default=150, type=int,
                        help="how many cmd in one asm")

    parser.add_argument("--init", default=True, type=bool,
                        help="decide whether init reg with not zero value")

    parser.add_argument("--bound", default=False, type=bool,
                        help="whether include bound-test")

    parser.add_argument("--Project", default=6, type=int,
                        help="the type of test Ins")

    return vars(parser.parse_args())

def prjPath_parser():
    parser = ArgumentParser(description="adaptable_command_generator")

    parser.add_argument("--prjPath", default="D:\\CO\\CO_P6\\CO_P6", type=str, help="dir of mips project")
    
    return vars(parser.parse_args())
