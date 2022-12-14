import 'package:ethio_agri_ceft_app/presentation/dashboard/widgets/profile_widgets.dart';
import 'package:ethio_agri_ceft_app/presentation/exports.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final fullNameController = TextEditingController();
  final usernameController = TextEditingController();
  final userEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationCubit>();
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 244, 248, 1),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ListView(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PageHeadline(
                    text: "Profile",
                    color: Color.fromRGBO(42, 44, 65, 1),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: BlocConsumer<LogoutBloc, LogoutState>(
                      listener: (context, state) {
                        if (state is LogoutSuccessful) {
                          navCubit.toLoginScreen();
                          Navigator.of(context).pop(DialogueAction.yes);
                        }
                      },
                      builder: (context, state) {
                        if (state is Loggingout) {
                          return const CircularProgressIndicator(
                            color: Color.fromRGBO(0, 117, 94, 1),
                          );
                        }
                        if (state is Logoutfailed) {
                          return Text(state.error.toString());
                        }
                        return IconButton(
                            onPressed: () async {
                              await AlertDialogue.logoutDialogue(
                                  context,
                                  "Logout",
                                  "Are you sure you want to log out of john_d?",
                                  (() {
                                context
                                    .read<LogoutBloc>()
                                    .add(LogoutRequested());
                              }));
                            },
                            icon: const Icon(Icons.settings),
                            iconSize: 25);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color.fromRGBO(45, 125, 188, 1),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("John Doe",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              )),
                          Text("@john_d",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ProfileEditBtn(
                      dispatcher: () {
                        showBottomSheet(
                            context: context,
                            builder: ((context) => BuildBottomSheet(
                                  submit: (() {
                                    Navigator.of(context).pop();
                                  }),
                                  userNameController: fullNameController,
                                  userHandleController: usernameController,
                                  userEmailController: userEmailController,
                                )));
                      },
                      text: "Edit profile")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ProfileInfoCard(
                    icon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.date_range,
                          color: Color.fromRGBO(255, 114, 76, 1),
                        )),
                    text: "Joined in July 2022",
                    dispatcher: () {},
                  ),
                ],
              ),
            ])));
  }
}
