import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  static String routeName = 'PrivacyPolicy';
  static String routePath = '/PrivacyPolicy';

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
                            'Política de Privacidade',
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
                    ].divide(SizedBox(width: 75.0)),
                  ),
                ),
                Container(
                  width: 340.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Text(
                    'A presente Política de Privacidade (\"Política\") descreve como o aplicativo VittaGlico (\"Aplicativo\"), desenvolvido por [Nome da Empresa/Desenvolvedor], com sede em [Endereço da Empresa/Desenvolvedor, se aplicável], coleta, usa, armazena, compartilha e protege os dados pessoais e dados pessoais sensíveis dos seus usuários, em conformidade com a Lei nº 13.709/2018 – Lei Geral de Proteção de Dados Pessoais (LGPD).\n\nAo utilizar o VittaGlico, você concorda com a coleta e o uso de informações de acordo com esta Política.\n\n1. Controlador dos Dados Pessoais\nO controlador dos dados pessoais coletados através do VittaGlico é [Nome da Empresa/Desenvolvedor].\n\n2. Tipos de Dados Coletados\nColetamos diferentes tipos de dados para fornecer e melhorar nosso serviço a você:\n\n2.1. Dados Pessoais:\n* Dados de Cadastro: Nome completo, endereço de e-mail, número de telefone.\n* Dados de Contato de Emergência: Nome e número de telefone de contatos designados para o Botão de Socorro.\n\n2.2. Dados Pessoais Sensíveis (conforme LGPD):\n* Dados Glicêmicos: Leituras de glicemia (valores e horários).\n* Dados de Insulina: Dosagens de insulina aplicadas, tipo de insulina, e locais de aplicação.\n* Outros Dados de Saúde Relevantes: Informações que você voluntariamente inserir relacionadas ao seu manejo do diabetes para o cálculo de bolus ou outras funcionalidades do aplicativo.\n\n2.3. Dados de Localização (Geolocalização):\n* Coletamos dados de geolocalização apenas quando o Botão de Socorro para Hipoglicemia é ativado. Esta coleta é específica para o propósito de compartilhar sua localização com os contatos de emergência designados por você, a fim de prestar assistência em situações críticas. A coleta de localização não é contínua e ocorre somente com sua ativação explícita do recurso.\n\n3. Finalidade da Coleta e Tratamento dos Dados\nOs dados coletados são utilizados para as seguintes finalidades:\n\nRegistro e Autenticação de Usuários: Para criar e gerenciar sua conta no Aplicativo, permitindo seu acesso seguro às funcionalidades.\n\nGerenciamento de Dados Glicêmicos: Para registrar, visualizar e acompanhar suas leituras de glicemia, auxiliando no seu controle diário do diabetes.\n\nCálculo Automático de Bolus: Para realizar cálculos de dose de insulina com base nos dados glicêmicos e de carboidratos inseridos por você.\n\nGerenciamento do Rodízio de Aplicações de Insulina: Para ajudar você a registrar e gerenciar os locais de aplicação de insulina, prevenindo lipodistrofia e otimizando a absorção.\n\nBotão de Socorro para Hipoglicemia: Para enviar alertas aos seus contatos de emergência designados, incluindo sua localização atual, em caso de hipoglicemia.\n\nGestão de Permissões de Acesso: Para permitir que você, mediante seu consentimento explícito, compartilhe seus dados de saúde com familiares e/ou profissionais de saúde que você autorizar, visando um acompanhamento mais integrado.\n\nNotificações In-App: Para enviar alertas e informações relevantes sobre seu controle glicêmico e uso do Aplicativo.\n\nMelhoria do Serviço: Para analisar o uso do Aplicativo (de forma anonimizada e agregada, quando possível) e identificar oportunidades de melhoria de funcionalidades e desempenho.\n\n4. Base Legal para o Tratamento dos Dados (LGPD)\nO tratamento dos seus dados pessoais e dados pessoais sensíveis é realizado com base nas seguintes hipóteses legais da LGPD:\n\nConsentimento (Art. 7º, I e Art. 11, I da LGPD): Para o tratamento dos seus dados pessoais sensíveis (dados de saúde, incluindo glicemia, insulina e geolocalização para o botão de socorro) e para o compartilhamento desses dados com terceiros (familiares/profissionais de saúde). Seu consentimento será solicitado de forma clara e específica, podendo ser revogado a qualquer momento.\n\nExecução de Contrato ou Procedimentos Preliminares (Art. 7º, V da LGPD): Para o tratamento dos dados pessoais necessários para a execução dos serviços oferecidos pelo Aplicativo, como o registro, autenticação e o funcionamento das funcionalidades principais.\n\n5. Compartilhamento dos Dados\nSeus dados pessoais e dados pessoais sensíveis não serão compartilhados com terceiros não autorizados. O compartilhamento ocorrerá exclusivamente nas seguintes situações e sempre com o seu consentimento explícito e prévio:\n\nCom Contatos de Emergência: Quando você ativar o Botão de Socorro para Hipoglicemia, sua localização e, opcionalmente, outros dados relevantes, serão compartilhados com os contatos de emergência que você designou no Aplicativo.\n\nCom Familiares e Profissionais de Saúde Autorizados: Se você utilizar a funcionalidade de Gestão de Permissões de Acesso e conceder explicitamente permissão, seus dados de saúde poderão ser visualizados por familiares ou profissionais de saúde que você indicar. Você terá controle total sobre quais dados são compartilhados e com quem.\n\n6. Armazenamento e Segurança dos Dados\nSeus dados são armazenados em servidores seguros na Amazon Web Services (AWS), uma plataforma que oferece robustas medidas de segurança. Implementamos e mantemos medidas técnicas e organizacionais apropriadas para proteger seus dados pessoais contra acesso não autorizado, alteração, divulgação ou destruição, incluindo:\n\nCriptografia: Dados em trânsito e em repouso são criptografados.\n\nControles de Acesso: Acesso restrito aos dados apenas a pessoal autorizado e estritamente necessário.\n\nMonitoramento: Monitoramento contínuo da infraestrutura para detecção de atividades suspeitas.\n\nPolíticas de Segurança: Implementação de políticas e procedimentos de segurança da informação.\n\n7. Retenção dos Dados\nManteremos seus dados pessoais e dados pessoais sensíveis apenas pelo tempo necessário para cumprir as finalidades para as quais foram coletados, incluindo a necessidade de cumprir obrigações legais, resolver disputas e fazer cumprir nossos acordos. Geralmente, seus dados serão retidos enquanto sua conta estiver ativa. Após a desativação da conta, seus dados serão excluídos ou anonimizados, salvo se houver necessidade de retenção para fins legais.\n\n8. Seus Direitos como Titular dos Dados (LGPD)\nDe acordo com a LGPD, você possui os seguintes direitos em relação aos seus dados pessoais:\n\nConfirmação e Acesso: Confirmar a existência de tratamento e obter acesso aos seus dados.\n\nCorreção: Solicitar a correção de dados incompletos, inexatos ou desatualizados.\n\nAnonimização, Bloqueio ou Eliminação: Solicitar a anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com a LGPD.\n\nPortabilidade: Solicitar a portabilidade dos seus dados a outro fornecedor de serviço ou produto, mediante requisição expressa.\n\nEliminação: Solicitar a eliminação dos dados pessoais tratados com o seu consentimento, ressalvadas as hipóteses legais de guarda.\n\nInformação sobre Compartilhamento: Obter informação das entidades públicas e privadas com as quais o controlador realizou uso compartilhado de dados.\n\nInformação sobre a Possibilidade de Não Fornecer Consentimento: Ser informado sobre a possibilidade de não fornecer consentimento e sobre as consequências da negativa.\n\nRevogação do Consentimento: Revogar o consentimento a qualquer momento, por meio de manifestação expressa.\n\nOposição: Opor-se a tratamento realizado com fundamento em uma das hipóteses de dispensa de consentimento, em caso de descumprimento à LGPD.\n\nPara exercer qualquer um desses direitos, por favor, entre em contato conosco através do e-mail: [Endereço de Contato/E-mail].\n\n9. Alterações nesta Política de Privacidade\nPodemos atualizar nossa Política de Privacidade periodicamente. Quaisquer alterações serão publicadas nesta página e a data da \"última atualização\" será revisada. Recomendamos que você revise esta Política periodicamente para quaisquer alterações. As alterações a esta Política de Privacidade são efetivas quando são publicadas nesta página.\n\n10. Contato\nSe você tiver alguma dúvida sobre esta Política de Privacidade ou sobre o tratamento dos seus dados, entre em contato conosco:\n\n[Nome da Empresa/Desenvolvedor]\n[Endereço de Contato/E-mail]\n\nData da última atualização: 16 de Julho de 2025',
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
