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
%{

// Headers necessary to define wrapped classes.

#include<Handle_ObjMgt_ExternRef.hxx>
#include<Handle_ObjMgt_ExternShareable.hxx>
#include<Handle_ObjMgt_PSeqOfExtRef.hxx>
#include<Handle_ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>
#include<ObjMgt_ExternRef.hxx>
#include<ObjMgt_ExternShareable.hxx>
#include<ObjMgt_PSeqOfExtRef.hxx>
#include<ObjMgt_SeqExplorerOfPSeqOfExtRef.hxx>
#include<ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>

// Additional headers necessary for compilation.

#include<ObjMgt_ExternRef.hxx>
#include<ObjMgt_ExternShareable.hxx>
#include<ObjMgt_PSeqOfExtRef.hxx>
#include<ObjMgt_SeqExplorerOfPSeqOfExtRef.hxx>
#include<ObjMgt_SeqNodeOfPSeqOfExtRef.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Persistent.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Handle_PCollection_HAsciiString.hxx>
%}