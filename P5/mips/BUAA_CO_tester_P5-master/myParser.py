from argparse import ArgumentParser


def prepare_parser():
    parser = ArgumentParser(description="adaptable_command_generaotr")
    
    parser.add_argument("--test_size", default=300, type=int,
                        help="how many cmd in one asm")

    parser.add_argument("--init", default=False, type=bool,
                        help="decide whether init reg with not zero value")

    parser.add_argument("--bound", default=False, type=bool,
                        help="whether include bound-test")

    parser.add_argument("--suit", default=1, type=int,
                        help="the type of test Ins")

    parser.add_argument("--mixed", default=True, type=bool,
                        help="whether mix different types of Ins")

    parser.add_argument("--narrow", default=3, type=int,
                        help="whether mix different types of Ins")

    return vars(parser.parse_args())
