namespace _Namespace {

// This file was GCode generated. Feel free to modify the result.
// .NET Core OK!
//     netcoreapp2.0

using System;
using System.IO;
using System.Text;

// Serialize this class.
using TClass = _TClass;

// The default serialization format for TClass.
using TFormat = _TFormat;

partial class _TClass {
public sealed class Layout : ReadLayout<TClass>, IReadLayoutFormat<TClass>
{
    /// <summary>
    /// Tries to convert the string representation of a <see cref="_TClass()"/>
    /// to its <see cref="_TClass()"/> equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A Stream that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or undefined if the conversion failed. This parameter is passed
    /// initialized; any value originally supplied in result may be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public override bool TryReadInto(Stream s, TClass result)
    {
        throw new System.NotImplementedException();
    }

    /// <summary>
    /// Tries to convert the string representation of a <see cref="_TClass()"/>
    /// to its <see cref="_TClass()"/> equivalent, and returns a value that
    /// indicates whether the conversion succeeded.
    /// </summary>
    /// <param name="s">A StringBuilder that contains the text representation
    /// of the _TClass. The string is interpreted using the default _TFormat
    /// object.</param>
    /// <param name="format">An object that implements
    /// ILayout&lt;_TClass&gt;. This object controls the format of
    /// result.</param>
    /// <param name="result">When this method returns, contains the _TClass
    /// value equivalent to the text contains in s if the conversion
    /// succeeded, or null if the conversion failed. This parameter is passed
    /// uninitialized; any value originally supplied in result will be
    /// overwritten.</param>
    /// <returns>true if s was converted successfully; otherwise, false.</returns>
    public override bool TryReadInto(StringBuilder s, TClass result)
    {
        throw new System.NotImplementedException();
    }
} // Layout
}} // class:namespace

