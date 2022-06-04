// Mocks generated by Mockito 5.2.0 from annotations
// in stacked_tools/test/helpers/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:io' as _i6;

import 'package:ansicolor/ansicolor.dart' as _i3;
import 'package:args/args.dart' as _i13;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pubspec_yaml/pubspec_yaml.dart' as _i2;
import 'package:stacked_tools/src/mixins/project_structure_validator_mixin.dart'
    as _i14;
import 'package:stacked_tools/src/models/template_models.dart' as _i9;
import 'package:stacked_tools/src/services/colorized_log_service.dart' as _i17;
import 'package:stacked_tools/src/services/file_service.dart' as _i4;
import 'package:stacked_tools/src/services/path_service.dart' as _i7;
import 'package:stacked_tools/src/services/process_service.dart' as _i18;
import 'package:stacked_tools/src/services/pubspec_service.dart' as _i16;
import 'package:stacked_tools/src/services/render_template_service.dart'
    as _i15;
import 'package:stacked_tools/src/services/revert_template_service.dart'
    as _i12;
import 'package:stacked_tools/src/services/template_service_utils.dart' as _i10;
import 'package:stacked_tools/src/templates/template_helper.dart' as _i8;
import 'package:stacked_tools/src/templates/template_render_functions.dart'
    as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakePubspecYaml_0 extends _i1.Fake implements _i2.PubspecYaml {}

class _FakeAnsiPen_1 extends _i1.Fake implements _i3.AnsiPen {}

/// A class which mocks [FileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileService extends _i1.Mock implements _i4.FileService {
  @override
  _i5.Future<void> writeFile(
          {_i6.File? file,
          String? fileContent,
          bool? verbose = false,
          _i4.FileModificationType? type = _i4.FileModificationType.Create,
          String? verboseMessage}) =>
      (super.noSuchMethod(
          Invocation.method(#writeFile, [], {
            #file: file,
            #fileContent: fileContent,
            #verbose: verbose,
            #type: type,
            #verboseMessage: verboseMessage
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> deleteFile({String? filePath}) => (super.noSuchMethod(
      Invocation.method(#deleteFile, [], {#filePath: filePath}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> deleteFolder({String? directoryPath}) => (super.noSuchMethod(
      Invocation.method(#deleteFolder, [], {#directoryPath: directoryPath}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<bool> fileExists({String? filePath}) => (super.noSuchMethod(
      Invocation.method(#fileExists, [], {#filePath: filePath}),
      returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<String> readFileAsString({String? filePath}) =>
      (super.noSuchMethod(
          Invocation.method(#readFileAsString, [], {#filePath: filePath}),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<List<String>> readFileAsLines({String? filePath}) =>
      (super.noSuchMethod(
              Invocation.method(#readFileAsLines, [], {#filePath: filePath}),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i5.Future<List<String>>);
  @override
  _i5.Future<void> removeSpecificFileLines(
          {String? filePath, String? removedContent}) =>
      (super.noSuchMethod(
          Invocation.method(#removeSpecificFileLines, [],
              {#filePath: filePath, #removedContent: removedContent}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<List<_i6.FileSystemEntity>> getFilesInDirectory(
          {String? directoryPath}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getFilesInDirectory, [], {#directoryPath: directoryPath}),
              returnValue: Future<List<_i6.FileSystemEntity>>.value(
                  <_i6.FileSystemEntity>[]))
          as _i5.Future<List<_i6.FileSystemEntity>>);
  @override
  _i5.Future<List<String>> getFoldersInDirectory({String? directoryPath}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getFoldersInDirectory, [], {#directoryPath: directoryPath}),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i5.Future<List<String>>);
  @override
  _i5.Future<bool> isProjectRoot({String? outputPath}) => (super.noSuchMethod(
      Invocation.method(#isProjectRoot, [], {#outputPath: outputPath}),
      returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> isStackedApplication({String? outputPath}) =>
      (super.noSuchMethod(
          Invocation.method(
              #isStackedApplication, [], {#outputPath: outputPath}),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [PathService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPathService extends _i1.Mock implements _i7.PathService {
  @override
  String get templatesPath =>
      (super.noSuchMethod(Invocation.getter(#templatesPath), returnValue: '')
          as String);
  @override
  String get separator =>
      (super.noSuchMethod(Invocation.getter(#separator), returnValue: '')
          as String);
  @override
  String join(String? part1,
          [String? part2,
          String? part3,
          String? part4,
          String? part5,
          String? part6,
          String? part7,
          String? part8]) =>
      (super.noSuchMethod(
          Invocation.method(
              #join, [part1, part2, part3, part4, part5, part6, part7, part8]),
          returnValue: '') as String);
  @override
  String basename(String? path) =>
      (super.noSuchMethod(Invocation.method(#basename, [path]), returnValue: '')
          as String);
}

/// A class which mocks [TemplateHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockTemplateHelper extends _i1.Mock implements _i8.TemplateHelper {
  @override
  String get templatesPath =>
      (super.noSuchMethod(Invocation.getter(#templatesPath), returnValue: '')
          as String);
  @override
  List<_i6.FileSystemEntity> getFilesWithExtension(
          {List<_i6.FileSystemEntity>? filePaths, String? extension}) =>
      (super.noSuchMethod(
          Invocation.method(#getFilesWithExtension, [],
              {#filePaths: filePaths, #extension: extension}),
          returnValue: <_i6.FileSystemEntity>[]) as List<_i6.FileSystemEntity>);
  @override
  List<_i6.FileSystemEntity> getFilesThatContainSection(
          {List<_i6.FileSystemEntity>? files, String? section}) =>
      (super.noSuchMethod(
          Invocation.method(#getFilesThatContainSection, [],
              {#files: files, #section: section}),
          returnValue: <_i6.FileSystemEntity>[]) as List<_i6.FileSystemEntity>);
  @override
  String getTemplateFileNameOnly({_i6.FileSystemEntity? templateFilePath}) =>
      (super.noSuchMethod(
          Invocation.method(#getTemplateFileNameOnly, [],
              {#templateFilePath: templateFilePath}),
          returnValue: '') as String);
  @override
  String getTemplateFolderName({String? templateFilePath}) =>
      (super.noSuchMethod(
          Invocation.method(#getTemplateFolderName, [],
              {#templateFilePath: templateFilePath}),
          returnValue: '') as String);
  @override
  _i5.Future<List<_i6.FileSystemEntity>> getFilesForTemplate(
          {String? templateName, String? extension = r'.stk'}) =>
      (super.noSuchMethod(
              Invocation.method(#getFilesForTemplate, [],
                  {#templateName: templateName, #extension: extension}),
              returnValue: Future<List<_i6.FileSystemEntity>>.value(
                  <_i6.FileSystemEntity>[]))
          as _i5.Future<List<_i6.FileSystemEntity>>);
  @override
  _i5.Future<List<_i9.CompiledFileModification>>
      getTemplateModificationsToApply({String? templateName}) =>
          (super.noSuchMethod(
                  Invocation.method(#getTemplateModificationsToApply, [],
                      {#templateName: templateName}),
                  returnValue: Future<List<_i9.CompiledFileModification>>.value(
                      <_i9.CompiledFileModification>[]))
              as _i5.Future<List<_i9.CompiledFileModification>>);
  @override
  _i5.Future<List<_i9.CompiledTemplateFile>> getTemplateItemsToRender(
          {String? templateName}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getTemplateItemsToRender, [], {#templateName: templateName}),
              returnValue: Future<List<_i9.CompiledTemplateFile>>.value(
                  <_i9.CompiledTemplateFile>[]))
          as _i5.Future<List<_i9.CompiledTemplateFile>>);
}

/// A class which mocks [TemplateServiceUtils].
///
/// See the documentation for Mockito's code generation for more information.
class MockTemplateServiceUtils extends _i1.Mock
    implements _i10.TemplateServiceUtils {
  @override
  _i5.Future<void> compileTemplateInformation() =>
      (super.noSuchMethod(Invocation.method(#compileTemplateInformation, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String getTemplateOutputPath(
          {String? inputTemplatePath, String? name, String? outputFolder}) =>
      (super.noSuchMethod(
          Invocation.method(#getTemplateOutputPath, [], {
            #inputTemplatePath: inputTemplatePath,
            #name: name,
            #outputFolder: outputFolder
          }),
          returnValue: '') as String);
  @override
  Map<String, String> getTemplateRenderData(
          {String? templateName,
          String? name,
          Map<String, _i11.RenderFunction>? testRenderFunctions}) =>
      (super.noSuchMethod(
          Invocation.method(#getTemplateRenderData, [], {
            #templateName: templateName,
            #name: name,
            #testRenderFunctions: testRenderFunctions
          }),
          returnValue: <String, String>{}) as Map<String, String>);
  @override
  Map<String, String> applyGlobalTemplateProperties(
          Map<String, String>? renderTemplate,
          {String? packageName}) =>
      (super.noSuchMethod(
          Invocation.method(#applyGlobalTemplateProperties, [renderTemplate],
              {#packageName: packageName}),
          returnValue: <String, String>{}) as Map<String, String>);
  @override
  String templateModificationName(
          {String? modificationName, String? name, String? templateName}) =>
      (super.noSuchMethod(
          Invocation.method(#templateModificationName, [], {
            #modificationName: modificationName,
            #name: name,
            #templateName: templateName
          }),
          returnValue: '') as String);
  @override
  String getRenderedTemplateData(
          String? modificationTemplate, String? templateName, String? name) =>
      (super.noSuchMethod(
          Invocation.method(#getRenderedTemplateData,
              [modificationTemplate, templateName, name]),
          returnValue: '') as String);
}

/// A class which mocks [RevertTemplateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRevertTemplateService extends _i1.Mock
    implements _i12.RevertTemplateService {
  @override
  _i5.Future<void> revertTemplate(
          {String? templateName,
          String? name,
          bool? verbose = false,
          bool? excludeRoute = false,
          String? outputPath}) =>
      (super.noSuchMethod(
          Invocation.method(#revertTemplate, [], {
            #templateName: templateName,
            #name: name,
            #verbose: verbose,
            #excludeRoute: excludeRoute,
            #outputPath: outputPath
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> revertTemplateFiles(
          {_i9.StackedTemplate? template,
          String? templateName,
          String? name,
          String? outputFolder}) =>
      (super.noSuchMethod(
          Invocation.method(#revertTemplateFiles, [], {
            #template: template,
            #templateName: templateName,
            #name: name,
            #outputFolder: outputFolder
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<String> templateWithoutModifiedFileContent(
          {String? fileContent,
          String? modificationTemplate,
          String? modificationIdentifier,
          String? name,
          String? templateName}) =>
      (super.noSuchMethod(
          Invocation.method(#templateWithoutModifiedFileContent, [], {
            #fileContent: fileContent,
            #modificationTemplate: modificationTemplate,
            #modificationIdentifier: modificationIdentifier,
            #name: name,
            #templateName: templateName
          }),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  _i5.Future<void> purgeTemplate(
          String? templateName,
          _i13.ArgResults? argResults,
          _i14.ProjectStructureValidator? structureValidator) =>
      (super.noSuchMethod(
          Invocation.method(
              #purgeTemplate, [templateName, argResults, structureValidator]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
}

/// A class which mocks [RenderTemplateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRenderTemplateService extends _i1.Mock
    implements _i15.RenderTemplateService {
  @override
  _i5.Future<void> renderTemplate(
          {String? templateName,
          String? name,
          bool? verbose = false,
          bool? excludeRoute = false,
          String? outputPath}) =>
      (super.noSuchMethod(
          Invocation.method(#renderTemplate, [], {
            #templateName: templateName,
            #name: name,
            #verbose: verbose,
            #excludeRoute: excludeRoute,
            #outputPath: outputPath
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> modifyExistingFiles(
          {_i9.StackedTemplate? template,
          String? templateName,
          String? name,
          String? outputPath}) =>
      (super.noSuchMethod(
          Invocation.method(#modifyExistingFiles, [], {
            #template: template,
            #templateName: templateName,
            #name: name,
            #outputPath: outputPath
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String templateModificationFileContent(
          {String? fileContent,
          String? modificationTemplate,
          String? modificationIdentifier,
          String? name,
          String? templateName}) =>
      (super.noSuchMethod(
          Invocation.method(#templateModificationFileContent, [], {
            #fileContent: fileContent,
            #modificationTemplate: modificationTemplate,
            #modificationIdentifier: modificationIdentifier,
            #name: name,
            #templateName: templateName
          }),
          returnValue: '') as String);
  @override
  _i5.Future<void> writeOutTemplateFiles(
          {_i9.StackedTemplate? template,
          String? templateName,
          String? name,
          String? outputFolder}) =>
      (super.noSuchMethod(
          Invocation.method(#writeOutTemplateFiles, [], {
            #template: template,
            #templateName: templateName,
            #name: name,
            #outputFolder: outputFolder
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String renderContentForTemplate(
          {String? content, String? templateName, String? name}) =>
      (super.noSuchMethod(
          Invocation.method(#renderContentForTemplate, [],
              {#content: content, #templateName: templateName, #name: name}),
          returnValue: '') as String);
}

/// A class which mocks [PubspecService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPubspecService extends _i1.Mock implements _i16.PubspecService {
  @override
  _i2.PubspecYaml get pubspecYaml =>
      (super.noSuchMethod(Invocation.getter(#pubspecYaml),
          returnValue: _FakePubspecYaml_0()) as _i2.PubspecYaml);
  @override
  set pubspecYaml(_i2.PubspecYaml? _pubspecYaml) =>
      super.noSuchMethod(Invocation.setter(#pubspecYaml, _pubspecYaml),
          returnValueForMissingStub: null);
  @override
  String get getPackageName =>
      (super.noSuchMethod(Invocation.getter(#getPackageName), returnValue: '')
          as String);
  @override
  _i5.Future<void> initialise({String? workingDirectory}) =>
      (super.noSuchMethod(
          Invocation.method(
              #initialise, [], {#workingDirectory: workingDirectory}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
}

/// A class which mocks [ColorizedLogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockColorizedLogService extends _i1.Mock
    implements _i17.ColorizedLogService {
  @override
  _i3.AnsiPen get pen => (super.noSuchMethod(Invocation.getter(#pen),
      returnValue: _FakeAnsiPen_1()) as _i3.AnsiPen);
  @override
  set pen(_i3.AnsiPen? _pen) =>
      super.noSuchMethod(Invocation.setter(#pen, _pen),
          returnValueForMissingStub: null);
  @override
  void coloredPrint(_i3.AnsiPen? pen, {String? message}) => super.noSuchMethod(
      Invocation.method(#coloredPrint, [pen], {#message: message}),
      returnValueForMissingStub: null);
  @override
  void fileOutput({_i4.FileModificationType? type, String? message}) =>
      super.noSuchMethod(
          Invocation.method(#fileOutput, [], {#type: type, #message: message}),
          returnValueForMissingStub: null);
  @override
  void flutterOutput({String? message}) => super.noSuchMethod(
      Invocation.method(#flutterOutput, [], {#message: message}),
      returnValueForMissingStub: null);
  @override
  void stackedOutput({String? message, bool? isBold = false}) => super
      .noSuchMethod(
          Invocation.method(
              #stackedOutput, [], {#message: message, #isBold: isBold}),
          returnValueForMissingStub: null);
  @override
  void success({String? message}) =>
      super.noSuchMethod(Invocation.method(#success, [], {#message: message}),
          returnValueForMissingStub: null);
  @override
  void warn({String? message}) =>
      super.noSuchMethod(Invocation.method(#warn, [], {#message: message}),
          returnValueForMissingStub: null);
  @override
  void info({String? message}) =>
      super.noSuchMethod(Invocation.method(#info, [], {#message: message}),
          returnValueForMissingStub: null);
  @override
  void error({String? message}) =>
      super.noSuchMethod(Invocation.method(#error, [], {#message: message}),
          returnValueForMissingStub: null);
}

/// A class which mocks [ProcessService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProcessService extends _i1.Mock implements _i18.ProcessService {
  @override
  _i5.Future<void> runCreateApp({String? appName}) => (super.noSuchMethod(
      Invocation.method(#runCreateApp, [], {#appName: appName}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> runBuildRunner({String? appName}) => (super.noSuchMethod(
      Invocation.method(#runBuildRunner, [], {#appName: appName}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> runPubGet({String? appName}) => (super.noSuchMethod(
      Invocation.method(#runPubGet, [], {#appName: appName}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> runFormat({String? appName}) => (super.noSuchMethod(
      Invocation.method(#runFormat, [], {#appName: appName}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> _runProcessAndLogOutput(
          {String? programName,
          List<String>? arguments = const [],
          String? workingDirectory}) =>
      (super.noSuchMethod(
          Invocation.method(#runProcessAndLogOutput, [], {
            #programName: programName,
            #arguments: arguments,
            #workingDirectory: workingDirectory
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  void logSuccessStatus(int? exitCode) =>
      super.noSuchMethod(Invocation.method(#logSuccessStatus, [exitCode]),
          returnValueForMissingStub: null);
}
