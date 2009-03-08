/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module XmlMDataStd

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include XmlMDataStd_dependencies.i


%include XmlMDataStd_headers.i




%nodefaultctor Handle_XmlMDataStd_IntPackedMapDriver;
class Handle_XmlMDataStd_IntPackedMapDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver(const Handle_XmlMDataStd_IntPackedMapDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver(const XmlMDataStd_IntPackedMapDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntPackedMapDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntPackedMapDriver {
	XmlMDataStd_IntPackedMapDriver* GetObject() {
	return (XmlMDataStd_IntPackedMapDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_BooleanListDriver;
class Handle_XmlMDataStd_BooleanListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver(const Handle_XmlMDataStd_BooleanListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver(const XmlMDataStd_BooleanListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_BooleanListDriver {
	XmlMDataStd_BooleanListDriver* GetObject() {
	return (XmlMDataStd_BooleanListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_PlacementDriver;
class Handle_XmlMDataStd_PlacementDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_PlacementDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlacementDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlacementDriver(const Handle_XmlMDataStd_PlacementDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlacementDriver(const XmlMDataStd_PlacementDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlacementDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_PlacementDriver {
	XmlMDataStd_PlacementDriver* GetObject() {
	return (XmlMDataStd_PlacementDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ExpressionDriver;
class Handle_XmlMDataStd_ExpressionDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver(const Handle_XmlMDataStd_ExpressionDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver(const XmlMDataStd_ExpressionDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExpressionDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExpressionDriver {
	XmlMDataStd_ExpressionDriver* GetObject() {
	return (XmlMDataStd_ExpressionDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_PlaneDriver;
class Handle_XmlMDataStd_PlaneDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_PlaneDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlaneDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlaneDriver(const Handle_XmlMDataStd_PlaneDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlaneDriver(const XmlMDataStd_PlaneDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PlaneDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_PlaneDriver {
	XmlMDataStd_PlaneDriver* GetObject() {
	return (XmlMDataStd_PlaneDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ExtStringArrayDriver;
class Handle_XmlMDataStd_ExtStringArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver(const Handle_XmlMDataStd_ExtStringArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver(const XmlMDataStd_ExtStringArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExtStringArrayDriver {
	XmlMDataStd_ExtStringArrayDriver* GetObject() {
	return (XmlMDataStd_ExtStringArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_AsciiStringDriver;
class Handle_XmlMDataStd_AsciiStringDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver(const Handle_XmlMDataStd_AsciiStringDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver(const XmlMDataStd_AsciiStringDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AsciiStringDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_AsciiStringDriver {
	XmlMDataStd_AsciiStringDriver* GetObject() {
	return (XmlMDataStd_AsciiStringDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ShapeDriver;
class Handle_XmlMDataStd_ShapeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ShapeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ShapeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ShapeDriver(const Handle_XmlMDataStd_ShapeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ShapeDriver(const XmlMDataStd_ShapeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ShapeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ShapeDriver {
	XmlMDataStd_ShapeDriver* GetObject() {
	return (XmlMDataStd_ShapeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_CommentDriver;
class Handle_XmlMDataStd_CommentDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver(const Handle_XmlMDataStd_CommentDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver(const XmlMDataStd_CommentDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_CommentDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_CommentDriver {
	XmlMDataStd_CommentDriver* GetObject() {
	return (XmlMDataStd_CommentDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ReferenceArrayDriver;
class Handle_XmlMDataStd_ReferenceArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver(const Handle_XmlMDataStd_ReferenceArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver(const XmlMDataStd_ReferenceArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ReferenceArrayDriver {
	XmlMDataStd_ReferenceArrayDriver* GetObject() {
	return (XmlMDataStd_ReferenceArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_GeometryDriver;
class Handle_XmlMDataStd_GeometryDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_GeometryDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_GeometryDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_GeometryDriver(const Handle_XmlMDataStd_GeometryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_GeometryDriver(const XmlMDataStd_GeometryDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_GeometryDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_GeometryDriver {
	XmlMDataStd_GeometryDriver* GetObject() {
	return (XmlMDataStd_GeometryDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ExtStringListDriver;
class Handle_XmlMDataStd_ExtStringListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver(const Handle_XmlMDataStd_ExtStringListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver(const XmlMDataStd_ExtStringListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ExtStringListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ExtStringListDriver {
	XmlMDataStd_ExtStringListDriver* GetObject() {
	return (XmlMDataStd_ExtStringListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_NoteBookDriver;
class Handle_XmlMDataStd_NoteBookDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver(const Handle_XmlMDataStd_NoteBookDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver(const XmlMDataStd_NoteBookDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NoteBookDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NoteBookDriver {
	XmlMDataStd_NoteBookDriver* GetObject() {
	return (XmlMDataStd_NoteBookDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ConstraintDriver;
class Handle_XmlMDataStd_ConstraintDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ConstraintDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ConstraintDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ConstraintDriver(const Handle_XmlMDataStd_ConstraintDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ConstraintDriver(const XmlMDataStd_ConstraintDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ConstraintDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ConstraintDriver {
	XmlMDataStd_ConstraintDriver* GetObject() {
	return (XmlMDataStd_ConstraintDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ByteArrayDriver;
class Handle_XmlMDataStd_ByteArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver(const Handle_XmlMDataStd_ByteArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver(const XmlMDataStd_ByteArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ByteArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ByteArrayDriver {
	XmlMDataStd_ByteArrayDriver* GetObject() {
	return (XmlMDataStd_ByteArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_IntegerDriver;
class Handle_XmlMDataStd_IntegerDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver(const Handle_XmlMDataStd_IntegerDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver(const XmlMDataStd_IntegerDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerDriver {
	XmlMDataStd_IntegerDriver* GetObject() {
	return (XmlMDataStd_IntegerDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_PatternStdDriver;
class Handle_XmlMDataStd_PatternStdDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_PatternStdDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PatternStdDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PatternStdDriver(const Handle_XmlMDataStd_PatternStdDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PatternStdDriver(const XmlMDataStd_PatternStdDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PatternStdDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_PatternStdDriver {
	XmlMDataStd_PatternStdDriver* GetObject() {
	return (XmlMDataStd_PatternStdDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_RealDriver;
class Handle_XmlMDataStd_RealDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver(const Handle_XmlMDataStd_RealDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver(const XmlMDataStd_RealDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealDriver {
	XmlMDataStd_RealDriver* GetObject() {
	return (XmlMDataStd_RealDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_RelationDriver;
class Handle_XmlMDataStd_RelationDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver(const Handle_XmlMDataStd_RelationDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver(const XmlMDataStd_RelationDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RelationDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RelationDriver {
	XmlMDataStd_RelationDriver* GetObject() {
	return (XmlMDataStd_RelationDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_DirectoryDriver;
class Handle_XmlMDataStd_DirectoryDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver(const Handle_XmlMDataStd_DirectoryDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver(const XmlMDataStd_DirectoryDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_DirectoryDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_DirectoryDriver {
	XmlMDataStd_DirectoryDriver* GetObject() {
	return (XmlMDataStd_DirectoryDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_IntegerArrayDriver;
class Handle_XmlMDataStd_IntegerArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver(const Handle_XmlMDataStd_IntegerArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver(const XmlMDataStd_IntegerArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerArrayDriver {
	XmlMDataStd_IntegerArrayDriver* GetObject() {
	return (XmlMDataStd_IntegerArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_UAttributeDriver;
class Handle_XmlMDataStd_UAttributeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver(const Handle_XmlMDataStd_UAttributeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver(const XmlMDataStd_UAttributeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_UAttributeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_UAttributeDriver {
	XmlMDataStd_UAttributeDriver* GetObject() {
	return (XmlMDataStd_UAttributeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_IntegerListDriver;
class Handle_XmlMDataStd_IntegerListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver(const Handle_XmlMDataStd_IntegerListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver(const XmlMDataStd_IntegerListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_IntegerListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_IntegerListDriver {
	XmlMDataStd_IntegerListDriver* GetObject() {
	return (XmlMDataStd_IntegerListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_ReferenceListDriver;
class Handle_XmlMDataStd_ReferenceListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver(const Handle_XmlMDataStd_ReferenceListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver(const XmlMDataStd_ReferenceListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_ReferenceListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_ReferenceListDriver {
	XmlMDataStd_ReferenceListDriver* GetObject() {
	return (XmlMDataStd_ReferenceListDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_NamedDataDriver;
class Handle_XmlMDataStd_NamedDataDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver(const Handle_XmlMDataStd_NamedDataDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver(const XmlMDataStd_NamedDataDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NamedDataDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NamedDataDriver {
	XmlMDataStd_NamedDataDriver* GetObject() {
	return (XmlMDataStd_NamedDataDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_BooleanArrayDriver;
class Handle_XmlMDataStd_BooleanArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver(const Handle_XmlMDataStd_BooleanArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver(const XmlMDataStd_BooleanArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_BooleanArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_BooleanArrayDriver {
	XmlMDataStd_BooleanArrayDriver* GetObject() {
	return (XmlMDataStd_BooleanArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_TickDriver;
class Handle_XmlMDataStd_TickDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver(const Handle_XmlMDataStd_TickDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver(const XmlMDataStd_TickDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TickDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_TickDriver {
	XmlMDataStd_TickDriver* GetObject() {
	return (XmlMDataStd_TickDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_NameDriver;
class Handle_XmlMDataStd_NameDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver(const Handle_XmlMDataStd_NameDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver(const XmlMDataStd_NameDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_NameDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_NameDriver {
	XmlMDataStd_NameDriver* GetObject() {
	return (XmlMDataStd_NameDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_PointDriver;
class Handle_XmlMDataStd_PointDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_PointDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PointDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PointDriver(const Handle_XmlMDataStd_PointDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PointDriver(const XmlMDataStd_PointDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_PointDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_PointDriver {
	XmlMDataStd_PointDriver* GetObject() {
	return (XmlMDataStd_PointDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_AxisDriver;
class Handle_XmlMDataStd_AxisDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_AxisDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AxisDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AxisDriver(const Handle_XmlMDataStd_AxisDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AxisDriver(const XmlMDataStd_AxisDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_AxisDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_AxisDriver {
	XmlMDataStd_AxisDriver* GetObject() {
	return (XmlMDataStd_AxisDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_VariableDriver;
class Handle_XmlMDataStd_VariableDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver(const Handle_XmlMDataStd_VariableDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver(const XmlMDataStd_VariableDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_VariableDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_VariableDriver {
	XmlMDataStd_VariableDriver* GetObject() {
	return (XmlMDataStd_VariableDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_RealArrayDriver;
class Handle_XmlMDataStd_RealArrayDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver(const Handle_XmlMDataStd_RealArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver(const XmlMDataStd_RealArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealArrayDriver {
	XmlMDataStd_RealArrayDriver* GetObject() {
	return (XmlMDataStd_RealArrayDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_TreeNodeDriver;
class Handle_XmlMDataStd_TreeNodeDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver(const Handle_XmlMDataStd_TreeNodeDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver(const XmlMDataStd_TreeNodeDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_TreeNodeDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_TreeNodeDriver {
	XmlMDataStd_TreeNodeDriver* GetObject() {
	return (XmlMDataStd_TreeNodeDriver*)$self->Access();
	}
};

%nodefaultctor Handle_XmlMDataStd_RealListDriver;
class Handle_XmlMDataStd_RealListDriver : public Handle_XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_XmlMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver();
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver(const Handle_XmlMDataStd_RealListDriver &aHandle);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver(const XmlMDataStd_RealListDriver *anItem);
		%feature("autodoc", "1");
		Handle_XmlMDataStd_RealListDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlMDataStd_RealListDriver {
	XmlMDataStd_RealListDriver* GetObject() {
	return (XmlMDataStd_RealListDriver*)$self->Access();
	}
};

%nodefaultctor XmlMDataStd_DirectoryDriver;
class XmlMDataStd_DirectoryDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_DirectoryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_DirectoryDriver();

};
%extend XmlMDataStd_DirectoryDriver {
	Handle_XmlMDataStd_DirectoryDriver GetHandle() {
	return *(Handle_XmlMDataStd_DirectoryDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_IntegerListDriver;
class XmlMDataStd_IntegerListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_IntegerListDriver();

};
%extend XmlMDataStd_IntegerListDriver {
	Handle_XmlMDataStd_IntegerListDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerListDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ReferenceArrayDriver;
class XmlMDataStd_ReferenceArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ReferenceArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ReferenceArrayDriver();

};
%extend XmlMDataStd_ReferenceArrayDriver {
	Handle_XmlMDataStd_ReferenceArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ReferenceArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ExpressionDriver;
class XmlMDataStd_ExpressionDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExpressionDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ExpressionDriver();

};
%extend XmlMDataStd_ExpressionDriver {
	Handle_XmlMDataStd_ExpressionDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExpressionDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_BooleanListDriver;
class XmlMDataStd_BooleanListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_BooleanListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_BooleanListDriver();

};
%extend XmlMDataStd_BooleanListDriver {
	Handle_XmlMDataStd_BooleanListDriver GetHandle() {
	return *(Handle_XmlMDataStd_BooleanListDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_NamedDataDriver;
class XmlMDataStd_NamedDataDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NamedDataDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_NamedDataDriver();

};
%extend XmlMDataStd_NamedDataDriver {
	Handle_XmlMDataStd_NamedDataDriver GetHandle() {
	return *(Handle_XmlMDataStd_NamedDataDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_PlaneDriver;
class XmlMDataStd_PlaneDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_PlaneDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_PlaneDriver();

};
%extend XmlMDataStd_PlaneDriver {
	Handle_XmlMDataStd_PlaneDriver GetHandle() {
	return *(Handle_XmlMDataStd_PlaneDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ExtStringListDriver;
class XmlMDataStd_ExtStringListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExtStringListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ExtStringListDriver();

};
%extend XmlMDataStd_ExtStringListDriver {
	Handle_XmlMDataStd_ExtStringListDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExtStringListDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ConstraintDriver;
class XmlMDataStd_ConstraintDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ConstraintDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ConstraintDriver();

};
%extend XmlMDataStd_ConstraintDriver {
	Handle_XmlMDataStd_ConstraintDriver GetHandle() {
	return *(Handle_XmlMDataStd_ConstraintDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_IntPackedMapDriver;
class XmlMDataStd_IntPackedMapDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntPackedMapDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_IntPackedMapDriver();

};
%extend XmlMDataStd_IntPackedMapDriver {
	Handle_XmlMDataStd_IntPackedMapDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntPackedMapDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_PointDriver;
class XmlMDataStd_PointDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_PointDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_PointDriver();

};
%extend XmlMDataStd_PointDriver {
	Handle_XmlMDataStd_PointDriver GetHandle() {
	return *(Handle_XmlMDataStd_PointDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_RealArrayDriver;
class XmlMDataStd_RealArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_RealArrayDriver();

};
%extend XmlMDataStd_RealArrayDriver {
	Handle_XmlMDataStd_RealArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_VariableDriver;
class XmlMDataStd_VariableDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_VariableDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_VariableDriver();

};
%extend XmlMDataStd_VariableDriver {
	Handle_XmlMDataStd_VariableDriver GetHandle() {
	return *(Handle_XmlMDataStd_VariableDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_NoteBookDriver;
class XmlMDataStd_NoteBookDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NoteBookDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_NoteBookDriver();

};
%extend XmlMDataStd_NoteBookDriver {
	Handle_XmlMDataStd_NoteBookDriver GetHandle() {
	return *(Handle_XmlMDataStd_NoteBookDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_RelationDriver;
class XmlMDataStd_RelationDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RelationDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_RelationDriver();

};
%extend XmlMDataStd_RelationDriver {
	Handle_XmlMDataStd_RelationDriver GetHandle() {
	return *(Handle_XmlMDataStd_RelationDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_IntegerArrayDriver;
class XmlMDataStd_IntegerArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_IntegerArrayDriver();

};
%extend XmlMDataStd_IntegerArrayDriver {
	Handle_XmlMDataStd_IntegerArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_TickDriver;
class XmlMDataStd_TickDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_TickDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_TickDriver();

};
%extend XmlMDataStd_TickDriver {
	Handle_XmlMDataStd_TickDriver GetHandle() {
	return *(Handle_XmlMDataStd_TickDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ShapeDriver;
class XmlMDataStd_ShapeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ShapeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ShapeDriver();

};
%extend XmlMDataStd_ShapeDriver {
	Handle_XmlMDataStd_ShapeDriver GetHandle() {
	return *(Handle_XmlMDataStd_ShapeDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_CommentDriver;
class XmlMDataStd_CommentDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_CommentDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_CommentDriver();

};
%extend XmlMDataStd_CommentDriver {
	Handle_XmlMDataStd_CommentDriver GetHandle() {
	return *(Handle_XmlMDataStd_CommentDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_RealListDriver;
class XmlMDataStd_RealListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_RealListDriver();

};
%extend XmlMDataStd_RealListDriver {
	Handle_XmlMDataStd_RealListDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealListDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_AsciiStringDriver;
class XmlMDataStd_AsciiStringDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_AsciiStringDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_AsciiStringDriver();

};
%extend XmlMDataStd_AsciiStringDriver {
	Handle_XmlMDataStd_AsciiStringDriver GetHandle() {
	return *(Handle_XmlMDataStd_AsciiStringDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_RealDriver;
class XmlMDataStd_RealDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_RealDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_RealDriver();

};
%extend XmlMDataStd_RealDriver {
	Handle_XmlMDataStd_RealDriver GetHandle() {
	return *(Handle_XmlMDataStd_RealDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd;
class XmlMDataStd {
	public:
		%feature("autodoc", "1");
		~XmlMDataStd();
		%feature("autodoc", "1");
		XmlMDataStd();
		%feature("autodoc", "1");
		void AddDrivers(const Handle_XmlMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &anMsgDrv);
		%feature("autodoc", "1");
		void SetDocumentVersion(const Standard_Integer DocVersion);
		%feature("autodoc", "1");
		Standard_Integer DocumentVersion();

};

%nodefaultctor XmlMDataStd_PlacementDriver;
class XmlMDataStd_PlacementDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_PlacementDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_PlacementDriver();

};
%extend XmlMDataStd_PlacementDriver {
	Handle_XmlMDataStd_PlacementDriver GetHandle() {
	return *(Handle_XmlMDataStd_PlacementDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_UAttributeDriver;
class XmlMDataStd_UAttributeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_UAttributeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_UAttributeDriver();

};
%extend XmlMDataStd_UAttributeDriver {
	Handle_XmlMDataStd_UAttributeDriver GetHandle() {
	return *(Handle_XmlMDataStd_UAttributeDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_PatternStdDriver;
class XmlMDataStd_PatternStdDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_PatternStdDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_PatternStdDriver();

};
%extend XmlMDataStd_PatternStdDriver {
	Handle_XmlMDataStd_PatternStdDriver GetHandle() {
	return *(Handle_XmlMDataStd_PatternStdDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ExtStringArrayDriver;
class XmlMDataStd_ExtStringArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ExtStringArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ExtStringArrayDriver();

};
%extend XmlMDataStd_ExtStringArrayDriver {
	Handle_XmlMDataStd_ExtStringArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ExtStringArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ReferenceListDriver;
class XmlMDataStd_ReferenceListDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ReferenceListDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ReferenceListDriver();

};
%extend XmlMDataStd_ReferenceListDriver {
	Handle_XmlMDataStd_ReferenceListDriver GetHandle() {
	return *(Handle_XmlMDataStd_ReferenceListDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_BooleanArrayDriver;
class XmlMDataStd_BooleanArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_BooleanArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_BooleanArrayDriver();

};
%extend XmlMDataStd_BooleanArrayDriver {
	Handle_XmlMDataStd_BooleanArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_BooleanArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_ByteArrayDriver;
class XmlMDataStd_ByteArrayDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_ByteArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_ByteArrayDriver();

};
%extend XmlMDataStd_ByteArrayDriver {
	Handle_XmlMDataStd_ByteArrayDriver GetHandle() {
	return *(Handle_XmlMDataStd_ByteArrayDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_IntegerDriver;
class XmlMDataStd_IntegerDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_IntegerDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_IntegerDriver();

};
%extend XmlMDataStd_IntegerDriver {
	Handle_XmlMDataStd_IntegerDriver GetHandle() {
	return *(Handle_XmlMDataStd_IntegerDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_GeometryDriver;
class XmlMDataStd_GeometryDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_GeometryDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_GeometryDriver();

};
%extend XmlMDataStd_GeometryDriver {
	Handle_XmlMDataStd_GeometryDriver GetHandle() {
	return *(Handle_XmlMDataStd_GeometryDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_AxisDriver;
class XmlMDataStd_AxisDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_AxisDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_AxisDriver();

};
%extend XmlMDataStd_AxisDriver {
	Handle_XmlMDataStd_AxisDriver GetHandle() {
	return *(Handle_XmlMDataStd_AxisDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_TreeNodeDriver;
class XmlMDataStd_TreeNodeDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_TreeNodeDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_TreeNodeDriver();

};
%extend XmlMDataStd_TreeNodeDriver {
	Handle_XmlMDataStd_TreeNodeDriver GetHandle() {
	return *(Handle_XmlMDataStd_TreeNodeDriver*) &$self;
	}
};

%nodefaultctor XmlMDataStd_NameDriver;
class XmlMDataStd_NameDriver : public XmlMDF_ADriver {
	public:
		%feature("autodoc", "1");
		XmlMDataStd_NameDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const XmlObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, XmlObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, XmlObjMgt_Persistent & Target, XmlObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~XmlMDataStd_NameDriver();

};
%extend XmlMDataStd_NameDriver {
	Handle_XmlMDataStd_NameDriver GetHandle() {
	return *(Handle_XmlMDataStd_NameDriver*) &$self;
	}
};