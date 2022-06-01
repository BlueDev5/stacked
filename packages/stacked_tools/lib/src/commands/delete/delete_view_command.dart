import 'package:args/command_runner.dart';
import 'package:stacked_tools/src/constants/command_constants.dart';
import 'package:stacked_tools/src/constants/message_constants.dart';
import 'package:stacked_tools/src/locator.dart';
import 'package:stacked_tools/src/mixins/project_structure_validator_mixin.dart';
import 'package:stacked_tools/src/services/process_service.dart';
import 'package:stacked_tools/src/services/pubspec_service.dart';
import 'package:stacked_tools/src/services/template_service.dart';
import 'package:stacked_tools/src/templates/template_constants.dart';

class DeleteViewCommand extends Command with ProjectStructureValidator {
  final _pubspecService = locator<PubspecService>();
  final _processService = locator<ProcessService>();
  final _templateService = locator<TemplateService>();

  @override
  String get description =>
      'Deletes a view with all associated files and makes necessary code changes for deleting a view.';

  @override
  String get name => kTemplateNameView;

  DeleteViewCommand() {
    argParser.addFlag(
      ksExcludeRoute,
      defaultsTo: false,
      help: kCommandHelpExcludeRoute,
    );
  }

  @override
  Future<void> run() async {
    final outputPath = argResults!.rest.length > 1 ? argResults!.rest[1] : null;
    await _pubspecService.initialise(workingDirectory: outputPath);
    await validateStructure(outputPath: outputPath);
    await purgeView(outputPath: outputPath);
    await _processService.runBuildRunner(appName: outputPath);
    await _processService.runFormat(appName: outputPath);
  }

  /// It deletes the view and test files
  ///
  /// Args:
  ///   outputPath (String): The path to the output folder.
  Future<void> purgeView({String? outputPath}) async {
    _templateService.revertTemplate(
        templateName: kTemplateNameView, name: argResults!.rest.first);
  }
}
