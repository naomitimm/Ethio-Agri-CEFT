import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class ButtonWithArrow extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() dispatcher;
  const ButtonWithArrow({
    Key? key,
    required this.text,
    required this.color,
    required this.dispatcher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dispatcher,
      child: Container(
        height: 40,
        width: 190,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(42, 44, 65, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: color, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            IconButton(
                onPressed: dispatcher,
                icon: const FaIcon(
                  FontAwesomeIcons.arrowRight,
                  color: Color.fromRGBO(255, 114, 76, 1),
                  size: 20,
                ))
          ],
        ),
      ),
    );
  }
}

class AuthButtonWithArrow extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() dispatcher;
  final GlobalKey<FormState> formKey;
  const AuthButtonWithArrow(
      {Key? key,
      required this.text,
      required this.color,
      required this.dispatcher,
      required this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          dispatcher();
        }
      },
      child: Container(
        height: 40,
        width: 190,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(45, 125, 188, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: color, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            IconButton(
                onPressed: dispatcher,
                icon: const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.white,
                  size: 20,
                ))
          ],
        ),
      ),
    );
  }
}

class ButtonLoading extends StatelessWidget {
  final String text;
  final Color color;
  const ButtonLoading({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 190,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(158, 191, 217, 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: color, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            CircularProgressIndicator(
              color: color,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}

class AuthWideBlueButton extends StatelessWidget {
  final String lable;
  final void Function() dispatcher;
  final GlobalKey<FormState> formKey;
  const AuthWideBlueButton(
      {Key? key,
      required this.lable,
      required this.dispatcher,
      required this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          dispatcher();
        }
      },
      child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(37, 37, 37, 1),
              ),
              child: Center(
                child: Text(lable,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Color.fromRGBO(255, 114, 76, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
              ))),
    );
  }
}

class AuthLoadingButton extends StatelessWidget {
  const AuthLoadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromRGBO(37, 37, 37, 1),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: Color.fromRGBO(255, 114, 76, 1),
              ),
            )));
  }
}
