// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

/// @title Warhammer 40K Chapter Lore – pure text, no funds, no wallet interaction
/// @notice A simple, safe contract to store a Space Marine chapter, its Primarch, and a favorite quote.
/// @dev No payable functions, no selfdestruct, no external calls.

contract ChapterLore {

    /// @notice Name of the Space Marine chapter.
    string public chapterName;

    /// @notice Name of the Primarch of this chapter.
    string public primarchName;

    /// @notice A favorite quote or battle cry of the chapter.
    string public chapterQuote;

    /// @notice Emitted whenever someone updates the chapter lore.
    event ChapterUpdated(address indexed by, string newChapter, string newPrimarch, string newQuote);

    constructor() {
        // Default: Blood Angels
        chapterName = "Blood Angels";
        primarchName = "Sanguinius";
        chapterQuote = "For Sanguinius and the Emperor!";
    }

    /// @notice Update the chapter, Primarch, and quote.
    /// @dev Anyone can call this; it only updates text.
    /// @param newChapter The new chapter name.
    /// @param newPrimarch The new Primarch name.
    /// @param newQuote The new quote or battle cry.
    function updateChapter(
        string calldata newChapter,
        string calldata newPrimarch,
        string calldata newQuote
    ) external {
        chapterName = newChapter;
        primarchName = newPrimarch;
        chapterQuote = newQuote;

        emit ChapterUpdated(msg.sender, newChapter, newPrimarch, newQuote);
    }

    /// @notice Returns a combined lore description.
    /// @return description A single string summarizing the chapter, Primarch, and quote.
    function describeChapter() external view returns (string memory description) {
        description = string(
            abi.encodePacked(
                "Chapter: ",
                chapterName,
                ". Primarch: ",
                primarchName,
                ". Quote: ",
                chapterQuote
            )
        );
    }
}
