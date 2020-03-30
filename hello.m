function varargout = hello(varargin)
% HELLO MATLAB code for hello.fig
%      HELLO, by itself, creates a new HELLO or raises the existing
%      singleton*.
%
%      H = HELLO returns the handle to a new HELLO or the handle to
%      the existing singleton*.
%
%      HELLO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HELLO.M with the given input arguments.
%
%      HELLO('Property','Value',...) creates a new HELLO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hello_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hello_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hello

% Last Modified by GUIDE v2.5 12-Apr-2019 02:30:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hello_OpeningFcn, ...
                   'gui_OutputFcn',  @hello_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before hello is made visible.
function hello_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to hello (see VARARGIN)

% Choose default command line output for hello
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes hello wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = hello_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
set(handles.output_line,'String','Helloworld');
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.output_line,'String','')
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% 
% x=1; count=1; fuc=@(x)x.^2-6; primfuc=@(x)2*x;
% prev=0;
% fprintf('Count -- X \n');
% while (x-prev) ~= 0
%     prev=x;
%     fprintf('%d -- %f \n',count,x)
%     x= x-fuc(x)/primfuc(x);
%     count = count+1;
% end