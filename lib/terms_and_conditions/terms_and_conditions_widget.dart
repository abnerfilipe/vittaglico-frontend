import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  static String routeName = 'Terms_and_conditions';
  static String routePath = '/termsAndConditions';

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 340.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(SettingsWidget.routeName);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: FlutterFlowTheme.of(context).iconColor,
                          size: 30.0,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Terms & Condition',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).textColor,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 60.0)),
                  ),
                ),
                Container(
                  width: 340.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Text(
                    'Estes Termos e Condições de Uso (\"Termos\") regem o acesso e a utilização do aplicativo VittaGlico (\"Aplicativo\"), desenvolvido por [Nome da Empresa/Desenvolvedor], com sede em [Endereço da Empresa/Desenvolvedor, se aplicável].\n\nAo acessar ou utilizar o Aplicativo, você concorda em cumprir e estar vinculado a estes Termos. Caso não concorde com qualquer disposição destes Termos, por favor, não utilize o Aplicativo.\n\n1. Definição do Serviço\nO VittaGlico é um aplicativo de gerenciamento de diabetes com foco no controle glicêmico, oferecendo funcionalidades como:\n\nRegistro e Autenticação de Usuários.\n\nGerenciamento de Dados Glicêmicos (registro manual e visualização).\n\nCálculo Automático de Bolus.\n\nGerenciamento do Rodízio de Aplicações de Insulina.\n\nBotão de Socorro para Hipoglicemia (com geolocalização).\n\nGestão de Permissões de Acesso (para familiares e profissionais de saúde).\n\nNotificações In-App.\n\nO Aplicativo é uma ferramenta de apoio ao gerenciamento do diabetes e não substitui a consulta, o diagnóstico ou o tratamento médico profissional. As informações e cálculos fornecidos pelo Aplicativo são baseados nos dados inseridos pelo usuário e em fórmulas gerais, não constituindo aconselhamento médico personalizado.\n\n2. Aceitação dos Termos\nAo criar uma conta e utilizar o VittaGlico, você declara ter lido, compreendido e aceito estes Termos, bem como a nossa Política de Privacidade.\n\n3. Elegibilidade e Cadastro\n3.1. Para utilizar o Aplicativo, você deve ter a idade legal para celebrar contratos vinculativos em sua jurisdição.\n3.2. Você concorda em fornecer informações precisas, completas e atualizadas durante o processo de cadastro e manter essas informações sempre atualizadas.\n3.3. Você é responsável por manter a confidencialidade de sua senha e por todas as atividades que ocorram em sua conta. Notifique-nos imediatamente sobre qualquer uso não autorizado de sua conta.\n\n4. Uso do Aplicativo\n4.1. Responsabilidade do Usuário:\n* Você é o único responsável pela precisão, integridade e veracidade dos dados de saúde inseridos no Aplicativo.\n* Você deve sempre consultar um profissional de saúde qualificado para diagnóstico, tratamento e aconselhamento médico. O VittaGlico é uma ferramenta de suporte e não deve ser utilizado como única base para decisões de saúde.\n* Você é responsável por obter o consentimento explícito de familiares ou profissionais de saúde antes de conceder-lhes acesso aos seus dados de saúde através da funcionalidade de Gestão de Permissões de Acesso.\n* O Botão de Socorro para Hipoglicemia deve ser utilizado apenas em situações de emergência real. O uso indevido pode ter consequências graves.\n4.2. Conduta Proibida: Você concorda em não:\n* Utilizar o Aplicativo para qualquer finalidade ilegal ou não autorizada.\n* Interferir ou interromper a integridade ou o desempenho do Aplicativo.\n* Tentar obter acesso não autorizado a qualquer parte do Aplicativo ou sistemas relacionados.\n* Utilizar o Aplicativo para enviar spam ou qualquer outro tipo de comunicação não solicitada.\n\n5. Propriedade Intelectual\nTodos os direitos de propriedade intelectual relacionados ao VittaGlico, incluindo, mas não se limitando a software, design, gráficos, textos, logotipos e marcas registradas, são de propriedade exclusiva de [Nome da Empresa/Desenvolvedor] ou de seus licenciadores. Estes Termos não concedem a você nenhuma licença ou direito sobre a propriedade intelectual do Aplicativo, exceto pelo direito limitado de uso conforme permitido por estes Termos.\n\n6. Limitação de Responsabilidade\n6.1. O VittaGlico é fornecido \"como está\" e \"conforme disponível\", sem garantias de qualquer tipo, expressas ou implícitas.\n6.2. [Nome da Empresa/Desenvolvedor] não garante que o Aplicativo será ininterrupto, livre de erros ou seguro.\n6.3. Em nenhuma circunstância [Nome da Empresa/Desenvolvedor] será responsável por quaisquer danos diretos, indiretos, incidentais, especiais, consequenciais ou punitivos, incluindo, mas não se limitando a, perda de lucros, dados ou uso, decorrentes do uso ou da incapacidade de usar o Aplicativo.\n6.4. A responsabilidade total de [Nome da Empresa/Desenvolvedor] por qualquer reclamação decorrente destes Termos ou do uso do Aplicativo não excederá o valor total pago por você, se houver, pelo uso do Aplicativo nos doze (12) meses anteriores à data da reclamação.\n\n7. Privacidade dos Dados\nA sua privacidade é de extrema importância para nós. A coleta, uso, armazenamento e compartilhamento dos seus dados pessoais e dados pessoais sensíveis são regidos pela nossa Política de Privacidade, que faz parte integrante destes Termos. Recomendamos que você a leia atentamente.\n\n8. Alterações nos Termos\nReservamo-nos o direito de modificar estes Termos a qualquer momento. Quaisquer alterações serão publicadas no Aplicativo e/ou notificadas a você. O uso continuado do Aplicativo após a publicação das alterações constitui sua aceitação dos Termos revisados.\n\n9. Rescisão\nPodemos rescindir ou suspender seu acesso ao Aplicativo imediatamente, sem aviso prévio ou responsabilidade, se você violar estes Termos. Após a rescisão, seu direito de usar o Aplicativo cessará imediatamente.\n\n10. Lei Aplicável e Foro\nEstes Termos serão regidos e interpretados de acordo com as leis da República Federativa do Brasil, em especial a Lei nº 13.709/2018 (Lei Geral de Proteção de Dados - LGPD). Fica eleito o foro da comarca de [Cidade/Estado onde a empresa está sediada, ou cidade/estado do desenvolvedor] para dirimir quaisquer dúvidas ou litígios decorrentes destes Termos, com a exclusão de qualquer outro, por mais privilegiado que seja.\n\n11. Contato\nSe você tiver alguma dúvida sobre estes Termos, entre em contato conosco através do e-mail: [Endereço de Contato/E-mail].\n\nData da última atualização: 16 de Julho de 2025',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 40.0))
                  .addToStart(SizedBox(height: 20.0))
                  .addToEnd(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
